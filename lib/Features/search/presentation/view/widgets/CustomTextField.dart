import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        enabledBorder: OutLinedBorder(),
        focusedBorder: OutLinedBorder(),
      ),
    );
  }

  OutlineInputBorder OutLinedBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(14),
      ),
      borderSide: BorderSide(
        color: Colors.white,
      ),
    );
  }
}
