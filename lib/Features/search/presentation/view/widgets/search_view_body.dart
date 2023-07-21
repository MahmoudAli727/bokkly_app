import 'package:bookly_app/Features/search/presentation/view/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';

class Search_View_body extends StatelessWidget {
  const Search_View_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children: [
                CustomSearchTextField(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
