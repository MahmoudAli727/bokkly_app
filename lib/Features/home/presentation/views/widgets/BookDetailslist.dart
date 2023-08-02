// ignore_for_file: file_names

import 'package:bookly_app/Features/home/presentation/view_models/Similar_book_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/CustomListitem.dart';
import 'package:bookly_app/core/utils/CustomCircular.dart';
import 'package:bookly_app/core/widgets/Custom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsList extends StatelessWidget {
  const BookDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.16,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBookImage(
                        UrlImage: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            ""),
                  );
                },
              ),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
