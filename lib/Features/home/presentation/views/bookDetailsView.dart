// ignore_for_file: file_names

import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/presentation/view_models/FeaturedBook_d/featured_book_d_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/BookDetailsViewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({
    super.key,
    required this.book,
  });
  final book_entity book;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<FeaturedBookDCubit>(context).fetchFeaturedBook_d();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Book_details_View_Body(
          book: widget.book,
        ),
      ),
    );
  }
}
