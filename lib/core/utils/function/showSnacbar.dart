// ignore_for_file: file_names

import 'package:bookly_app/Features/home/presentation/view_models/FeaturedBook_d/featured_book_d_cubit.dart';
import 'package:flutter/material.dart';

void shoSnackBar(BuildContext context, FeaturedBook_DPaginationFailuer state) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        state.errmessage,
      ),
      duration: const Duration(seconds: 3),
    ),
  );
}
