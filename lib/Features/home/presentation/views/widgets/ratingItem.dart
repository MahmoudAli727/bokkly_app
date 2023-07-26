// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bookly_app/core/utils/style.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({
    Key? key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  }) : super(key: key);
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: Style.titleMedium16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          " ($count)",
          style: Style.titleMedium14.copyWith(
            fontWeight: FontWeight.w600,
            color: Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
