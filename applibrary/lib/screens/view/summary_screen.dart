
import 'package:applibrary/screens/view/summary.dart';
import 'package:applibrary/screens/view/summary_create.dart';
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
              "",
              style: Theme.of(context).textTheme.displayLarge,
            ),

            // Content
            Text(
              "",
              style: Theme.of(context).textTheme.bodyLarge,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Summary()));
              },
              //child: const Text('Create Summary'),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.add),
                  ),
                  const SizedBox(width: 5),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text('Create Summary'),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                textStyle: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
