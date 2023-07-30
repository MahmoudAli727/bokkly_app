import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';

List<book_entity> getBookslist(Map<String, dynamic> data) {
  List<book_entity> books = [];
  for (var bookMap in data["items"]) {
    books.add(BookModel.fromJson(bookMap));
  }
  return books;
}
