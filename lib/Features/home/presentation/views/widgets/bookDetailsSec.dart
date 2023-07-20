import 'package:bookly_app/Features/home/presentation/views/widgets/CustomListitem.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/ratingItem.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetailsSec extends StatelessWidget {
  const BookDetailsSec({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.26),
          child: const CustomListItem(),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          "The Jungle Book",
          style: Style.titleMedium30.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          "Rudyard Kipling",
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
        const RatingItem(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
