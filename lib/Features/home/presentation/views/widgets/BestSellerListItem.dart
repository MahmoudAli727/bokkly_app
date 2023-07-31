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
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.dfstudio.com%2Fdigital-image-size-and-resolution-what-do-you-need-to-know%2F&psig=AOvVaw0daars8vzO_ZjdCE8mGpa1&ust=1690892480702000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLCYwsD3uIADFQAAAAAdAAAAABAE"
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
