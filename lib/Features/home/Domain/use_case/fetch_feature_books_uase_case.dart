import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/Domain/repo/home_repo_d.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBokksUseCase extends use_case<List<book_entity>, void> {
  final home_repo_d home_r_d;

  FetchFeaturedBokksUseCase(this.home_r_d);
  @override
  Future<Either<Failure, List<book_entity>>> call([void param]) async {
    return await home_r_d.fetchFeauredBookentity();
  }
}

abstract class use_case<type, param> {
  Future<Either<Failure, type>> call([param? param]);
}
