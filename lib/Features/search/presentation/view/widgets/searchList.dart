// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SearchbookList extends StatelessWidget {
  const SearchbookList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          // child: BestSeller_item(
          // ),
        );
      },
    );
  }
}
