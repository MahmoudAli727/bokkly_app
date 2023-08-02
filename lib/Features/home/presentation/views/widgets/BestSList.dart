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
  // late final ScrollController _scrollController;
  // var nextPage = 1;
  // var isLoading = false;
  // @override
  // void initState() {
  //   super.initState();
  //   _scrollController = ScrollController();
  //   _scrollController.addListener(() {
  //     _scrollListener();
  //   });
  // }

  // void _scrollListener() async {
  //   var currentPositions = _scrollController.position.pixels;
  //   var maxScrollLength = _scrollController.position.maxScrollExtent;
  //   if (currentPositions >= 0.7 * maxScrollLength) {
  //     if (!isLoading) {
  //       isLoading = true;
  //       await BlocProvider.of<NewestBookDCubit>(context)
  //           .fetchNewestBook_d(pageNumber: nextPage++);
  //       isLoading = false;
  //     }
  //   }
  // }

  // @override
  // void dispose() {
  //   _scrollController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      // controller: _scrollController,
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
