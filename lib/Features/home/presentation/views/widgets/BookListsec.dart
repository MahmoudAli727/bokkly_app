import 'package:bookly_app/Features/home/presentation/views/widgets/BookDetailslist.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetailsListSec extends StatelessWidget {
  const BookDetailsListSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Style.titleMedium14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const BookDetailsList(),
      ],
    );
  }
}
