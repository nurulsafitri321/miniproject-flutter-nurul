import 'package:applibrary/jsonModels/user.dart';
import 'package:applibrary/sqlite/summary_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class DatabaseHelper {
  final databaseName = "library.db";
  String summaryTable =
      "CREATE TABLE summarys (summaryId INTEGER PRIMARY KEY AUTOINCREMENT, summaryTitle TEXT NOT NULL, summaryContent TEXT NOT NULL, createdAt TEXT DEFAULT CURRENT_TIMESTAMP)";

  //Now we must create our user table into our sqlite db

  String users =
      "create table users (usrId INTEGER PRIMARY KEY AUTOINCREMENT, usrName TEXT UNIQUE, usrPassword TEXT)";

  //We are done in this section

  Future<Database> initDB() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, databaseName);

    return openDatabase(path, version: 1, onCreate: (db, version) async {
      await db.execute(users);
      await db.execute(summaryTable);
    });
  }

  //Now we create login and sign up method
  //as we create sqlite other functionality in our previous video

  //IF you didn't watch my previous videos, check part 1 and part 2

  //Login Method

  Future<bool> login(Users user) async {
    final Database db = await initDB();

    // I forgot the password to check
    var result = await db.rawQuery(
        "select * from users where usrName = '${user.usrName}' AND usrPassword = '${user.usrPassword}'");
    if (result.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  //Sign up
  Future<int> signup(Users user) async {
    final Database db = await initDB();

    return db.insert('users', user.toMap());
  }

  //Search Method
  Future<List<SummaryModel>> searchSummarys(String keyword) async {
    final Database db = await initDB();
    List<Map<String, Object?>> searchResult = await db
        .rawQuery("select * from summarys where summaryTitle LIKE ?", ["%$keyword%"]);
    return searchResult.map((e) => SummaryModel.fromMap(e)).toList();
  }

  //CRUD Methods

  //Create Summary
  Future<int> createSummary(SummaryModel summary) async {
    final Database db = await initDB();
    return db.insert('summarys', summary.toMap());
  }

  //Get Summarys
  Future<List<SummaryModel>> getSummarys() async {
    final Database db = await initDB();
    List<Map<String, Object?>> result = await db.query('summarys');
    return result.map((e) => SummaryModel.fromMap(e)).toList();
  }

  //Delete Summarys
  Future<int> deleteSummary(int id) async {
    final Database db = await initDB();
    return db.delete('summarys', where: 'summaryId = ?', whereArgs: [id]);
  }

  //Update Summarys
  Future<int> updateSummary(title, content, summaryId) async {
    final Database db = await initDB();
    return db.rawUpdate(
        'update summarys set summaryTitle = ?, summaryContent = ? where summaryId = ?',
        [title, content, summaryId]);
  }
}