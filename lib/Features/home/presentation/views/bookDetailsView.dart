import 'package:bookly_app/Features/home/presentation/views/widgets/BookDetailsViewBody.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Book_details_View_Body(),
    );
  }
}
