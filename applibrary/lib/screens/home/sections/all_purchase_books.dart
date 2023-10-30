import 'package:applibrary/api/api_books.dart';
import 'package:applibrary/models/books.dart';
import 'package:applibrary/widgets/book_3dc.dart';
import 'package:applibrary/widgets/reading_book.dart';
import 'package:flutter/material.dart';


class AllPurchasedBooks extends StatelessWidget {
  const AllPurchasedBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Waiting for you",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: _buildPurchasedBookList(context),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildPurchasedBookList(BuildContext context) {
    List<Book> books = getBooksByPurchased();

    return books.map((book) {
      return Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReadingBook(
                  pdfPath: "assets/harry_potter.pdf",
                ),
              ),
            );
          },
          child: BookCover3D(imageUrl: book.imageUrl),
        ),
      );
    }).toList();
  }
}