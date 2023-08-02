// ignore_for_file: file_names, non_constant_identifier_names

import 'package:bookly_app/Features/home/presentation/views/widgets/Custom_book_image_loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.UrlImage});
  final String UrlImage;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          imageUrl: UrlImage,
          fit: BoxFit.fill,
          placeholder: (context, url) => const Center(
            child: CustomBookImageLoadingIndicator(),
            // child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => const Icon(
            Icons.error,
          ),
        ),
      ),
    );
  }
}
