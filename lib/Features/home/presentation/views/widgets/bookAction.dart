import 'package:bookly_app/core/widgets/Custom_Button.dart';
import 'package:flutter/material.dart';

class Book_Action extends StatelessWidget {
  const Book_Action({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Custom_button(
            BackgroundColor: Colors.white,
            TextColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            text: "19.99€",
          ),
        ),
        Expanded(
          child: Custom_button(
            BackgroundColor: Color(0xffEF8262),
            TextColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            text: "Free preview",
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
