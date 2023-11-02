
import 'package:applibrary/sqlite/summary_model.dart';
import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  SummaryScreen({Key? key,}) : super(key: key);

  //SummaryModel? summary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text( "summary"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Title
            Text(
              "sumary",
              style: Theme.of(context).textTheme.displayLarge,
            ),

            // Content
            Text(
              "summary",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
