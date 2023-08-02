// ignore_for_file: camel_case_types, file_names

import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/function/launch_url.dart';
import 'package:bookly_app/core/widgets/Custom_Button.dart';
import 'package:flutter/material.dart';

class Book_Action extends StatelessWidget {
  const Book_Action({super.key, required this.books});
  final BookModel books;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Custom_button(
            onPressed: () {},
            BackgroundColor: Colors.white,
            TextColor: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            text: "Free",
          ),
        ),
        Expanded(
          child: Custom_button(
            onPressed: () async {
              launchCustomUr(context, books.volumeInfo.previewLink);
            },
            BackgroundColor: const Color(0xffEF8262),
            TextColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            text: getText(books),
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Preview';
    }
  }
}
