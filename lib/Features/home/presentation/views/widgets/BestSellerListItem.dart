import 'package:bookly_app/core/utils/Assets.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class BestSeller_item extends StatelessWidget {
  const BestSeller_item({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.TestImage),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          const Column(
            children: [
              SizedBox(
                width: 200,
                child: Text(
                  "Harry Potter\nand the Goblet of Fire",
                  overflow: TextOverflow.ellipsis,
                  style: Style.titleMedium20,
                  maxLines: 2,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
