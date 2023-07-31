import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:hive/hive.dart';

Future<void> saveBooksData(List<book_entity> books, String bookName) async {
  var box = await Hive.box<book_entity>(bookName);
  box.addAll(books);
}
