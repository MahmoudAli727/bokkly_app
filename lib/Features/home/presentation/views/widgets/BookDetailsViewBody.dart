import 'package:bookly_app/Features/home/presentation/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:flutter/material.dart';

class Book_details_View_Body extends StatelessWidget {
  const Book_details_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomBookDetailsAppbar(),
      ],
    );
  }
}
