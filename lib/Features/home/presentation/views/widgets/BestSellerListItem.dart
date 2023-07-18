import 'package:bookly_app/core/utils/Assets.dart';
import 'package:flutter/material.dart';

class BestSeller_item extends StatelessWidget {
  const BestSeller_item({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
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
        ],
      ),
    );
  }
}
