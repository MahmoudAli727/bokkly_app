import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
              Uri uri = Uri.parse(books.volumeInfo.previewLink!);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              }
            },
            BackgroundColor: Color(0xffEF8262),
            TextColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            text: "preview",
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
