import 'package:applibrary/screens/profile/section/bio_section.dart';
import 'package:applibrary/screens/profile/section/level_progress_s.dart';
import 'package:applibrary/screens/profile/section/statis_section.dart';
import 'package:applibrary/widgets/book_keepreadings.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Nurul Safitri",
            ),
            const Icon(Icons.book),
             // Add the book icon here

          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column( children: [
              BioSection(),
              SizedBox(height: 16.0),
              LevelProgressSection(),
              SizedBox(height: 16.0),
              StatisSection(),
              SizedBox(height: 16.0),
              KeepReadingSection(),
            ],
          ),
        ),
      ),
    );
  }
}