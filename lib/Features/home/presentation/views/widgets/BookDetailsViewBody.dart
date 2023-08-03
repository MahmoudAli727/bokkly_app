// ignore_for_file: camel_case_types, file_names

import 'package:bookly_app/Features/home/presentation/views/widgets/BookDetailsList_bloc.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:flutter/material.dart';

class Book_details_View_Body extends StatelessWidget {
  const Book_details_View_Body({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomBookDetailsAppbar(),
                SizedBox(
                  height: 10,
                ),
                // BookDetailsSec(
                //   book: books,
                // ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  // child: Book_Action(
                  //   books: books,
                  // ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                BookDetailsListbloc(),
                SizedBox(
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
