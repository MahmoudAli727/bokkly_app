import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/Domain/repo/home_repo_d.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpldomain extends home_repo_d {
  @override
  Future<Either<Failure, List<book_entity>>> fetchFeauredBookentity() {
    // TODO: implement fetchFeauredBookentity
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<book_entity>>> fetchNewesBookentity() {
    // TODO: implement fetchNewesBookentity
    throw UnimplementedError();
  }
}
