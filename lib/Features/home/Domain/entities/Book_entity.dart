// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types, file_names

import 'package:hive/hive.dart';
part 'Book_entity.g.dart';

@HiveType(typeId: 0)
class book_entity {
  @HiveField(0)
  final String bookId;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String? authorname;
  @HiveField(3)
  final String? image;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final num? rating;
  book_entity({
    required this.bookId,
    required this.title,
    required this.authorname,
    required this.image,
    required this.price,
    required this.rating,
  });
}
