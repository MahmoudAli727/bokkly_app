import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          "4.8",
          style: Style.titleMedium16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(2390)",
          style: Style.titleMedium14.copyWith(
            color: Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
