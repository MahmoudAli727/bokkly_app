import 'package:bookly_app/Features/home/presentation/views/widgets/BookListsec.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/bookAction.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/bookDetailsSec.dart';
import 'package:flutter/material.dart';

class Book_details_View_Body extends StatelessWidget {
  const Book_details_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
                BookDetailsSec(),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Book_Action(),
                ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                BookDetailsListSec(),
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
