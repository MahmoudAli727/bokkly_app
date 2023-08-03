import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/CustomListitem.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/ratingItem.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetailsSec extends StatelessWidget {
  const BookDetailsSec({super.key, required this.book});
  final book_entity book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.26),
          child: CustomBookImage(UrlImage: book.image ?? ''),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          book.title,
          textAlign: TextAlign.center,
          style: Style.titleMedium30.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          book.authorname ?? '',
          style: Style.titleMedium18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.white.withOpacity(.70),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        RatingItem(
          rating: book.rating ?? 0,
          count: 15,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
