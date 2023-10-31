import 'package:applibrary/sqlite/sqlite.dart';
import 'package:applibrary/sqlite/summary_model.dart';
import 'package:flutter/material.dart';


class CreateSummary extends StatefulWidget {
  const CreateSummary({super.key});

  @override
  State<CreateSummary> createState() => _CreateSummaryState();
}

class _CreateSummaryState extends State<CreateSummary> {
  final title = TextEditingController();
  final content = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final db = DatabaseHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Summary"),
        actions: [
          IconButton(
              onPressed: () {
                //Add Summary button
                //We should not allow empty data to the database
                if (formKey.currentState!.validate()) {
                  db
                      .createSummary(SummaryModel(
                          summaryTitle: title.text,
                          summaryContent: content.text,
                          createdAt: DateTime.now().toIso8601String()))
                      .whenComplete(() {
                    //When this value is true
                    Navigator.of(context).pop(true);
                  });
                }
              },
              icon: const Icon(Icons.check))
        ],
      ),
      body: Form(
          //I forgot to specify key
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
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
              ],
            ),
          )),
    );
  }
}