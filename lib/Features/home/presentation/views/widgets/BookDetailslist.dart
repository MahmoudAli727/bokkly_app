import 'package:bookly_app/Features/home/presentation/views/widgets/CustomListitem.dart';
import 'package:flutter/material.dart';

class BookDetailsList extends StatelessWidget {
  const BookDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomListItem(),
            );
          },
        ),
      ),
    );
  }
}
