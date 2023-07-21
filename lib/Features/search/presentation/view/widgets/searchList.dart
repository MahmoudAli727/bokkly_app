import 'package:bookly_app/Features/home/presentation/views/widgets/BestSellerListItem.dart';
import 'package:flutter/material.dart';

class SearchbookList extends StatelessWidget {
  const SearchbookList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSeller_item(),
        );
      },
    );
  }
}
