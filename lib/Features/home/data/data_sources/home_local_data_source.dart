import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/const.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<book_entity> fetchFeatureBooks({int pageNumber = 0});
  List<book_entity> fetchNewestBooks();
}

class HomeLocalDataSourceimp extends HomeLocalDataSource {
  @override
  List<book_entity> fetchFeatureBooks({int pageNumber = 0}) {
    int startIndex = pageNumber * 10;
    int endIndex = (pageNumber + 1) * 10;
    var box = Hive.box<book_entity>(kFeaturedBox);
    int length = box.values.length;
    if (startIndex >= length || endIndex > length) {
      return [];
    }
    return box.values.toList().sublist(startIndex, endIndex);
  }

  @override
  List<book_entity> fetchNewestBooks() {
    var box = Hive.box<book_entity>(kNewestBox);
    return box.values.toList();
  }
}
