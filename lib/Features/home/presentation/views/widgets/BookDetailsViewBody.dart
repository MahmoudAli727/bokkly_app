import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/BookListsec.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/bookAction.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/bookDetailsSec.dart';
import 'package:flutter/material.dart';

class Book_details_View_Body extends StatelessWidget {
  const Book_details_View_Body({super.key, required this.books});
  final BookModel books;
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
                  books: books,
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Book_Action(
                    books: books,
                  ),
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const BookDetailsListSec(),
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
