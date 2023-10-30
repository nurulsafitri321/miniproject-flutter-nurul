import 'package:applibrary/api/api_books.dart';
import 'package:applibrary/models/books.dart';
import 'package:applibrary/widgets/book_3dc.dart';
import 'package:applibrary/widgets/reading_book.dart';
import 'package:flutter/material.dart';


class KeepReadingSection extends StatelessWidget {
  const KeepReadingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Keep reading",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: _buildPopularBookList(context),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildPopularBookList(BuildContext context) {
    final List<Book> books = getAllBooks();

    return books.skip(12).take(5).map((book) {
      return Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReadingBook(
                  pdfPath: "assets/pdf/A-History-of-Mediaeval-Jewish-Philosophy.pdf",
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