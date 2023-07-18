import 'package:bookly_app/Features/home/presentation/views/widgets/ratingItem.dart';
import 'package:bookly_app/core/utils/Assets.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class BestSeller_item extends StatelessWidget {
  const BestSeller_item({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 3.2,
                ),
                const SizedBox(
                  width: 200,
                  child: Text(
                    "Harry Potter\nand the Goblet of Fire",
                    overflow: TextOverflow.ellipsis,
                    style: Style.titleMedium20,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  "J.K. Rowling",
                  style: Style.titleMedium14,
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text(
                      "19.99 €",
                      style: Style.titleMedium20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 44.3,
                    ),
                    RatingItem(),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
