import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/const.dart';
import 'package:hive/hive.dart';

Future<void> saveBooksData(List<book_entity> books) async {
  var box = await Hive.box(kFeaturedBox);
  box.addAll(books);
}
