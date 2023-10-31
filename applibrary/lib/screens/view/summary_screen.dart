
import 'package:applibrary/sqlite/summary_model.dart';
import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({Key? key, required this.summary}) : super(key: key);

  final SummaryModel summary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(summary.summaryTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Title
            Text(
              summary.summaryTitle,
              style: Theme.of(context).textTheme.displayLarge,
            ),

            // Content
            Text(
              summary.summaryContent,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
