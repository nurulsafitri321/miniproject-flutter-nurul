import 'package:applibrary/screens/view/summary_create.dart';
import 'package:applibrary/sqlite/sqlite.dart';
import 'package:applibrary/sqlite/summary_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';


class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummarysState();
}

  class _SummarysState extends State<Summary> {
  late DatabaseHelper handler;
  late Future<List<SummaryModel>> summary;
  final db = DatabaseHelper();

  final title = TextEditingController();
  final content = TextEditingController();
  final keyword = TextEditingController();

  @override
  void initState() {
    handler = DatabaseHelper();
    summary = handler.getSummarys();

    handler.initDB().whenComplete(() {
      summary = getAllSummarys();
    });
    super.initState();
  }

  Future<List<SummaryModel>> getAllSummarys() {
    return handler.getSummarys();
  }

  //Search method here
  //First we have to create a method in Database helper class
  Future<List<SummaryModel>> searchSummary() {
    return handler.searchSummarys(keyword.text);
  }

  //Refresh method
  Future<void> _refresh() async {
    setState(() {
      summary = getAllSummarys();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Summary"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //We need call refresh method after a new Summary is created
            //Now it works properly
            //We will do delete now
            Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CreateSummary()))
                .then((value) {
              if (value) {
                //This will be called
                _refresh();
              }
            });
          },
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            //Search Field here
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(8)),
              child: TextFormField(
                controller: keyword,
                onChanged: (value) {
                  //When we type something in textfield
                  if (value.isNotEmpty) {
                    setState(() {
                      summary = searchSummary();
                    });
                  } else {
                    setState(() {
                      summary = getAllSummarys();
                    });
                  }
                },
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                    hintText: "Search"),
              ),
            ),
            Expanded(
              child: FutureBuilder<List<SummaryModel>>(
                future: summary,
                builder: (BuildContext context,
                    AsyncSnapshot<List<SummaryModel>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasData && snapshot.data!.isEmpty) {
                    return const Center(child: Text("No data"));
                  } else if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  } else {
                    final items = snapshot.data ?? <SummaryModel>[];
                    return ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            subtitle: Text(DateFormat("yMd").format(
                                DateTime.parse(items[index].createdAt))),
                            title: Text(items[index].summaryTitle),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                //We call the delete method in database helper
                                db
                                    .deleteSummary(items[index].summaryId!)
                                    .whenComplete(() {
                                  //After success delete , refresh Summary
                                  //Done, next step is update Summary
                                  _refresh();
                                });
                              },
                            ),
                            onTap: () {
                              //When we click onSummary
                              setState(() {
                                title.text = items[index].summaryTitle;
                                content.text = items[index].summaryContent;
                              });
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      actions: [
                                        Row(
                                          children: [
                                            TextButton(
                                              onPressed: () {
                                                //Now update method
                                                db
                                                    .updateSummary(
                                                        title.text,
                                                        content.text,
                                                        items[index].summaryId)
                                                    .whenComplete(() {
                                                  //After update, Summary will refresh
                                                  _refresh();
                                                  Navigator.pop(context);
                                                });
                                              },
                                              child: const Text("Update"),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text("Cancel"),
                                            ),
                                          ],
                                        ),
                                      ],
                                      title: const Text("Update Summary"),
                                      content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            //We need two textfield
                                            TextFormField(
                                              controller: title,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return "Title is required";
                                                }
                                                return null;
                                              },
                                              decoration: const InputDecoration(
                                                label: Text("Title"),
                                              ),
                                            ),
                                            TextFormField(
                                              controller: content,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return "Content is required";
                                                }
                                                return null;
                                              },
                                              decoration: const InputDecoration(
                                                label: Text("Content"),
                                              ),
                                            ),
                                          ]),
                                    );
                                  });
                            },
                          );
                        });
                  }
                },
              ),
            ),
          ],
        ));
  }
}