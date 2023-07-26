import 'package:bookly_app/Features/home/presentation/view_models/Feature_books_cubit/feature_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/CustomListitem.dart';
import 'package:bookly_app/core/utils/CustomCircular.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/core/widgets/Custom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeatureList extends StatelessWidget {
  const FeatureList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureCubit, FeatureState>(
      builder: (context, state) {
        if (state is FeatureSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRouter.kBookDetalsView,
                          extra: state.books[index],
                        );
                      },
                      child: CustomBookImage(
                          UrlImage: state.books[index].volumeInfo.imageLinks
                                  ?.thumbnail ??
                              ""),
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is FeatureFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
