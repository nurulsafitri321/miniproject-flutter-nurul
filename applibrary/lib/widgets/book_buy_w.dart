import 'package:applibrary/models/books.dart';
import 'package:applibrary/widgets/book_3dc.dart';
import 'package:applibrary/widgets/book_buy_details.dart';
import 'package:flutter/material.dart';


class BuyBookWrappper extends StatelessWidget {
  final Book book;

  const BuyBookWrappper({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BuyingBookDetails(book: book)),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BookCover3D(
            imageUrl: book.imageUrl,
          ),
          Text(
            book.price <= 0 ? "Free" : "${book.price} €",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}