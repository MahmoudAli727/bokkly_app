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
          //  state.books.length,
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
                        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.dfstudio.com%2Fdigital-image-size-and-resolution-what-do-you-need-to-know%2F&psig=AOvVaw0daars8vzO_ZjdCE8mGpa1&ust=1690892480702000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLCYwsD3uIADFQAAAAAdAAAAABAE"
                    // state.books[index].volumeInfo.imageLinks
                    // ?.thumbnail ??
                    // ""),
                    ),
              ),
            );
          },
        ),
      ),
    );
  }
}
