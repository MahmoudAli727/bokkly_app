import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class Custom_button extends StatelessWidget {
  const Custom_button({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          "19.99€",
          style: Style.titleMedium18.copyWith(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
