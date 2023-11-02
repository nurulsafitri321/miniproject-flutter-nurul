import 'package:applibrary/screens/market/filters/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;



void main() {
  testWidgets('SearchBarSection should have a hint text', (tester) async {
    await tester.pumpWidget(const SearchBarSection());

    // Check if the hint text is present.
    expect(find.text('Search...'), findsOneWidget);
  });
}
