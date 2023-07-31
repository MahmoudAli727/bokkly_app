import 'package:bookly_app/Features/home/presentation/view_models/FeaturedBook_d/featured_book_d_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featurelist.dart';
import 'package:bookly_app/core/utils/CustomCircular.dart';
import 'package:bookly_app/core/widgets/Custom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListBloc extends StatelessWidget {
  const FeaturedListBloc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookDCubit, FeaturedBookDState>(
      builder: (context, state) {
        if (state is FeaturedBook_DSuccess) {
          return FeatureList(
            books: state.books,
          );
        } else if (state is FeaturedBook_DFailure) {
          return CustomErrorWidget(errMessage: state.errmessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
