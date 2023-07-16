import 'package:bookly_app/Features/home/presentation/views/widgets/CustomAppbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/CustomListitem.dart';
import 'package:flutter/material.dart';

class home_view_body extends StatelessWidget {
  const home_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 24,
        ),
        CustomAppbar(),
        CustomListItem(),
      ],
    );
  }
}
