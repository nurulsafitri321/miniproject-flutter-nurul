import 'package:applibrary/screens/home/home_screens.dart';
import 'package:applibrary/screens/home/sections/all_purchase_books.dart';
import 'package:applibrary/widgets/book_keepreadings.dart';
import 'package:applibrary/widgets/book_last_open.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('HomeScreen should have a title', (tester) async {
    await tester.pumpWidget(const HomeScreen());

    expect(find.text('Library'), findsOneWidget);
  });

  testWidgets('HomeScreen should have a LastOpenedBook widget', (tester) async {
    await tester.pumpWidget(const HomeScreen());

    expect(find.byType(LastOpenedBook), findsOneWidget);
  });

  testWidgets('HomeScreen should have a KeepReadingSection widget', (tester) async {
    await tester.pumpWidget(const HomeScreen());

    expect(find.byType(KeepReadingSection), findsOneWidget);
  });

  testWidgets('HomeScreen should have an AllPurchasedBooks widget', (tester) async {
    await tester.pumpWidget(const HomeScreen());

    expect(find.byType(AllPurchasedBooks), findsOneWidget);
  });
}
