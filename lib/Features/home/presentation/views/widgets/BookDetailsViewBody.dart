// ignore_for_file: camel_case_types, file_names

import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/bookDetailsSec.dart';
import 'package:flutter/material.dart';

class Book_details_View_Body extends StatelessWidget {
  const Book_details_View_Body({
    super.key,
    required this.book,
  });
  final book_entity book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const CustomBookDetailsAppbar(),
                const SizedBox(
                  height: 10,
                ),
                BookDetailsSec(
                  book: book,
                ),
                const SizedBox(
                  height: 25,
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20),
                //   child: Book_Action(
                //     books: books,
                //   ),
                // ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                // const BookDetailsListbloc(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
