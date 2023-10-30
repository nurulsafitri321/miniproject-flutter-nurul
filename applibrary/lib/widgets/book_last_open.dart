import 'package:applibrary/widgets/book_3dc.dart';
import 'package:applibrary/widgets/reading_book.dart';
import 'package:flutter/material.dart';


class LastOpenedBook extends StatelessWidget {
  const LastOpenedBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Opened Lastly  ",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ReadingBook(
                          pdfPath: "assets/pdf/International.pdf",
                        )),
              );
            },
            child: const BookCover3D(
              imageUrl:
                  "https://s3.amazonaws.com/digilibraries.com/covers/108167.jpg",
            ),
          ),
        ),
      ],
    );
  }
}