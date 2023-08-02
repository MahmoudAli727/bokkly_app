import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/presentation/view_models/FeaturedBook_d/featured_book_d_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/Featured_books_list_loading_indicator.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featurelist.dart';
import 'package:bookly_app/core/utils/function/showSnacbar.dart';
import 'package:bookly_app/core/widgets/Custom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListBloc extends StatefulWidget {
  const FeaturedListBloc({
    super.key,
  });

  @override
  State<FeaturedListBloc> createState() => _FeaturedListBlocState();
}

class _FeaturedListBlocState extends State<FeaturedListBloc> {
  List<book_entity> boks = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBookDCubit, FeaturedBookDState>(
      listener: (context, state) {
        if (state is FeaturedBook_DSuccess) {
          boks.addAll(state.books);
        }
        if (state is FeaturedBook_DPaginationFailuer) {
          shoSnackBar(context, state);
        }
      },
      builder: (context, state) {
        if (state is FeaturedBook_DSuccess ||
            state is FeaturedBook_DPaginationLoading ||
            state is FeaturedBook_DPaginationFailuer) {
          return FeatureList(
            books: boks,
          );
        } else if (state is FeaturedBook_DFailure) {
          return CustomErrorWidget(errMessage: state.errmessage);
        } else {
          return const FeaturedBooksListViewLoadingIndicator();
        }
      },
    );
  }
}
