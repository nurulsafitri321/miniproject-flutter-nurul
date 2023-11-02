import 'package:applibrary/jsonModels/user.dart';
import 'package:applibrary/sqlite/summary_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


//class DatabaseHelper {

  class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  static Database? _database;

  DatabaseHelper._internal() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();

  Future<Database> get database async {
    _database = await _initializeDB();
    return _database!;
  }
  final databaseName = "library.db";
  String summaryTable =
      "CREATE TABLE summarys (summaryId INTEGER PRIMARY KEY AUTOINCREMENT, summaryTitle TEXT NOT NULL, summaryContent TEXT NOT NULL, createdAt TEXT DEFAULT CURRENT_TIMESTAMP)";

  //create our user table into our sqlite db

  String users =
      "create table users (usrId INTEGER PRIMARY KEY AUTOINCREMENT, usrName TEXT UNIQUE, usrPassword TEXT)";


  Future<Database> _initializeDB() async {
    var db = await openDatabase(
      'library_db.db',
      version: 1,
      onCreate: (db, version) async {
        await db.execute(users);
        await db.execute(summaryTable);
        // await db.execute('''CREATE TABLE $tableName (
        //   id INTEGER PRIMARY KEY AUTOINCREMENT,
        //   taskName TEXT
        // )''');
      },
    );

    return db;
  }
  // Future<Database> initDB() async {
  //   final databasePath = await getDatabasesPath();
  //   final path = join(databasePath, databaseName);

  //   return openDatabase(path, version: 1, onCreate: (db, version) async {
  //     await db.execute(users);
  //     await db.execute(summaryTable);
  //   });
  // }

 

  Future<bool> login(Users user) async {
    final Database db = await database;


    var result = await db.rawQuery(
        "select * from users where usrName = '${user.usrName}' AND usrPassword = '${user.usrPassword}'");
        print("ini adalah hasil login");
    print(result);
    if (result.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  //Sign up
  Future<int> signup(Users user) async {
    final Database db = await database;

    return db.insert('users', user.toMap());
  }

  //Search Method
  Future<List<SummaryModel>> searchSummarys(String keyword) async {
    final Database db = await database;
    List<Map<String, Object?>> searchResult = await db
        .rawQuery("select * from summarys where summaryTitle LIKE ?", ["%$keyword%"]);
    return searchResult.map((e) => SummaryModel.fromMap(e)).toList();
  }

  //CRUD Methods

  //Create Summary
  Future<int> createSummary(SummaryModel summary) async {
    final Database db = await database;
    return db.insert('summarys', summary.toMap());
  }

  //Get Summarys
  Future<List<SummaryModel>> getSummarys() async {
    final Database db = await database;
    List<Map<String, Object?>> result = await db.query('summarys');
    return result.map((e) => SummaryModel.fromMap(e)).toList();
  }

  //Delete Summarys
  Future<int> deleteSummary(int id) async {
    final Database db = await database;
    return db.delete('summarys', where: 'summaryId = ?', whereArgs: [id]);
  }

  //Update Summarys
  Future<int> updateSummary(title, content, summaryId) async {
    final Database db = await database;
    return db.rawUpdate(
        'update summarys set summaryTitle = ?, summaryContent = ? where summaryId = ?',
        [title, content, summaryId]);
  }
}