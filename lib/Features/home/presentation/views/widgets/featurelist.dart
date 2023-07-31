import 'package:bookly_app/Features/home/presentation/views/widgets/CustomListitem.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeatureList extends StatelessWidget {
  const FeatureList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          // itemCount: state.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(
                    AppRouter.kBookDetalsView,
                    // extra: state.books[index],
                  );
                },
                child: const CustomBookImage(
                    UrlImage:
                        //  state.books[index].volumeInfo.imageLinks
                        // ?.thumbnail ??
                        "https://media.istockphoto.com/id/1410391090/photo/crystal-globe-putting-on-moss.webp?b=1&s=612x612&w=0&k=20&c=CksdIKZkvwKrOzoCk1VdBzbWK5nP0LXmddXvpaQO5tA="),
              ),
            );
          },
        ),
      ),
    );
  }
}
