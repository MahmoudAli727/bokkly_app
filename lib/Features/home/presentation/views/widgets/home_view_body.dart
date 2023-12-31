// ignore_for_file: camel_case_types

import 'package:bookly_app/Features/home/presentation/views/widgets/BestSellerListBloc.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/CustomAppbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/FeaturedListWithBlocBuilder.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class home_view_body extends StatelessWidget {
  const home_view_body({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 25,
              ),
              CustomAppbar(),
              SizedBox(
                height: 20,
              ),
              FeaturedListBloc(),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Newest Books",
                  textAlign: TextAlign.start,
                  style: Style.titleMedium18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BestSellerListBloc(),
        )
      ],
    );
  }
}
