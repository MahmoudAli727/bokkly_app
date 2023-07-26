import 'package:bookly_app/Features/search/presentation/view/widgets/CustomTextField.dart';
import 'package:bookly_app/Features/search/presentation/view/widgets/searchList.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class Search_View_body extends StatelessWidget {
  const Search_View_body({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomSearchTextField(),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Search Result",
            style: Style.titleMedium18,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(child: SearchbookList()),
      ],
    );
  }
}
