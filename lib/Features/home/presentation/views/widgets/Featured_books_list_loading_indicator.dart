// ignore_for_file: file_names

import 'package:bookly_app/Features/home/presentation/views/widgets/Custom_book_image_loading_indicator.dart';
import 'package:bookly_app/core/widgets/Custom_fading_widget.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListViewLoadingIndicator extends StatelessWidget {
  const FeaturedBooksListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            itemCount: 15,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomBookImageLoadingIndicator(),
              );
            },
          )),
    );
  }
}
