import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/presentation/view_models/NewestBooks_D/newest_book_d_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/BestSList.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/Custom_book_image_loading_indicator.dart';
import 'package:bookly_app/core/utils/function/showSnacbar.dart';
import 'package:bookly_app/core/widgets/Custom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListBloc extends StatefulWidget {
  const BestSellerListBloc({super.key});

  @override
  State<BestSellerListBloc> createState() => _BestSellerListBlocState();
}

class _BestSellerListBlocState extends State<BestSellerListBloc> {
  List<book_entity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewestBookDCubit, NewestBookDState>(
        listener: (context, state) {
      if (state is NewestBookDSuccess) {
        books.addAll(state.books);
      }
      if (state is NewestBooDPaginationFailure) {
        shoSnackBarNewest(context, state);
      }
    }, builder: (context, state) {
      if (state is NewestBookDSuccess ||
          state is NewestBooDPaginationLoading ||
          state is NewestBooDPaginationFailure) {
        return BestSellerList(books: books);
      } else if (state is NewestBookDFailure) {
        return CustomErrorWidget(errMessage: state.errmessage);
      } else {
        return const CustomBookImageLoadingIndicator();
      }
    });
  }
}
