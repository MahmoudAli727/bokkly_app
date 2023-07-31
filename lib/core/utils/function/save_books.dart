import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:hive/hive.dart';

void saveBooksData(List<book_entity> books, String bookName) {
  var box = Hive.box<book_entity>(bookName);
  box.addAll(books);
}
