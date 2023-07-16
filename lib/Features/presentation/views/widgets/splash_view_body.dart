import 'package:bookly_app/core/utils/Assets.dart';
import 'package:flutter/material.dart';

class splash_view_body extends StatelessWidget {
  const splash_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image(
          image: AssetImage(AssetsData.logo),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          "Read Free Books",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
