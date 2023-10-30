import 'package:applibrary/models/books.dart';
import 'package:applibrary/widgets/book_3dc.dart';
import 'package:applibrary/widgets/book_details_bio.dart';
import 'package:applibrary/widgets/book_details_box.dart';
import 'package:applibrary/widgets/reading_book.dart';
import 'package:flutter/material.dart';


class BuyingBookDetails extends StatelessWidget {
  final Book book;

  const BuyingBookDetails({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BookDetailsBio(book: book),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                buildDetailBox("Rating", book.rating, context),
                buildDetailBox("Release", book.yearRelease, context),
                buildDetailBox("Pages", book.pages, context),
                buildDetailBox("XP", book.totalXP, context),
              ],
            ),
            const Spacer(),
            Center(
              child: BookCover3D(
                imageUrl: book.imageUrl,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  book.price <= 0 ? "Free" : "${book.price} €",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadingBook(
                          pdfPath: "assets/history.pdf",
                        ),
                      ),
                    );
                  },
                  child: const Icon(Icons.payment, size: 40),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}