import 'package:bookly_app/Features/home/presentation/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/CustomListitem.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/bookAction.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/ratingItem.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class Book_details_View_Body extends StatelessWidget {
  const Book_details_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const CustomBookDetailsAppbar(),
          const SizedBox(
            height: 10,
          ),
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
              fontSize: 26,
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
              color: Colors.white.withOpacity(.70),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const RatingItem(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Book_Action(),
          ),
        ],
      ),
    );
  }
}
