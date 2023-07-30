// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types
class book_entity {
  final String bookId;
  final String title;
  final String? authorname;
  final String? image;
  final num? price;
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
