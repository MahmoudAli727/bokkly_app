import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/const.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<book_entity> fetchFeatureBooks();
  List<book_entity> fetchNewestBooks();
}

class HomeLocalDataSourceimp extends HomeLocalDataSource {
  @override
  List<book_entity> fetchFeatureBooks() {
    var box = Hive.box<book_entity>(kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<book_entity> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}
