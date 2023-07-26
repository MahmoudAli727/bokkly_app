import 'package:bookly_app/Features/search/presentation/view/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class Search_View extends StatelessWidget {
  const Search_View({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Search_View_body(),
      ),
    );
  }
}
