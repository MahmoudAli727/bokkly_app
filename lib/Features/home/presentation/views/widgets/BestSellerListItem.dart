import 'package:bookly_app/Features/home/presentation/views/widgets/CustomListitem.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/ratingItem.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSeller_item extends StatelessWidget {
  const BestSeller_item({
    super.key,
    //  required this.book
  });
  // final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kBookDetalsView,
          // extra: book,
        );
      },
      child: SizedBox(
        height: 110,
        child: Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            const CustomBookImage(
                UrlImage:
                    "https://media.istockphoto.com/id/1410391090/photo/crystal-globe-putting-on-moss.webp?b=1&s=612x612&w=0&k=20&c=CksdIKZkvwKrOzoCk1VdBzbWK5nP0LXmddXvpaQO5tA="
                //  book.volumeInfo.imageLinks?.thumbnail ?? ""
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
                      "aaaaaaaaaaaaa",
                      // book.volumeInfo.title!,
                      overflow: TextOverflow.ellipsis,
                      style: Style.titleMedium20,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    "bbbbbbbbb",
                    // book.volumeInfo.authors![0],
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
                      const RatingItem(
                        rating: 10,
                        count: 10,
                        // rating: book.volumeInfo.averageRating ?? 0,
                        // count: book.volumeInfo.ratingsCount ?? 0,
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
