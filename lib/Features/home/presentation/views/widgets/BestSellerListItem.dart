// ignore_for_file: camel_case_types, file_names

import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/CustomListitem.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/ratingItem.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSeller_item extends StatelessWidget {
  const BestSeller_item({super.key, required this.book});
  final book_entity book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kBookDetalsView,
          extra: book,
        );
      },
      child: SizedBox(
        height: 110,
        child: Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            CustomBookImage(UrlImage: book.image ?? ""),
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
                  SizedBox(
                    width: 200,
                    child: Text(
                      book.title,
                      overflow: TextOverflow.ellipsis,
                      style: Style.titleMedium20,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    book.authorname!,
                    style: Style.titleMedium14,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Text(
                        "Free",
                        style: Style.titleMedium20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 90,
                      ),
                      RatingItem(
                        rating: book.rating ?? 0,
                        count: 100,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
