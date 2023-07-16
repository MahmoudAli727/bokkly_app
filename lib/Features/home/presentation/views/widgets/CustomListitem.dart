import 'package:bookly_app/core/utils/Assets.dart';
import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage(AssetsData.Test),
            ),
          ),
        ),
      ),
    );
  }
}
