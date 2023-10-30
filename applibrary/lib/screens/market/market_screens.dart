import 'package:applibrary/screens/market/filters/filter_row_section.dart';
import 'package:applibrary/screens/market/suggestion/discount_books.dart';
import 'package:applibrary/screens/market/suggestion/popular_books.dart';
import 'package:applibrary/screens/market/suggestion/trend_books.dart';
import 'package:flutter/material.dart';


import 'filters/search_bar.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Market",
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SearchBarSection(),
              SizedBox(height: 24),
              FilterRowSection(),
              SizedBox(height: 24),
              TrendBooks(),
              SizedBox(height: 24),
              PopularBooks(),
              SizedBox(height: 24),
              DiscountBooks(),
            ],
          ),
        ),
      ),
    );
  }
}