// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: "Search",
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: 0.8,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          ),
        ),
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
