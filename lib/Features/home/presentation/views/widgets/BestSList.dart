import 'package:bookly_app/Features/home/presentation/view_models/newest/newest_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/BestSellerListItem.dart';
import 'package:bookly_app/core/utils/CustomCircular.dart';
import 'package:bookly_app/core/widgets/Custom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestCubit, NewestState>(builder: (context, state) {
      if (state is NewsetSuccess) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: state.books.length,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: BestSeller_item(),
            );
          },
        );
      } else if (state is NewsetFailure) {
        return CustomErrorWidget(errMessage: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
