// ignore_for_file: file_names

import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/BestSellerListItem.dart';
import 'package:flutter/material.dart';

class BestSellerList extends StatefulWidget {
  const BestSellerList({super.key, required this.books});
  final List<book_entity> books;

  @override
  State<BestSellerList> createState() => _BestSellerListState();
}

class _BestSellerListState extends State<BestSellerList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: widget.books.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BestSeller_item(
            book: widget.books[index],
          ),
        );
      },
    );
  }
}
