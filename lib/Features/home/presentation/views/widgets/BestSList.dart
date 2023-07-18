import 'package:bookly_app/Features/home/presentation/views/widgets/BestSellerListItem.dart';
import 'package:flutter/material.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const BestSeller_item();
      },
    );
  }
}
