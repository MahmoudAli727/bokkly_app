// ignore_for_file: non_constant_identifier_names

import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/Domain/repo/home_repo_d.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends use_case<List<book_entity>, void> {
  final home_repo_d home_r_d;

  FetchNewestBooksUseCase(this.home_r_d);
  @override
  Future<Either<Failure, List<book_entity>>> call([param = 0]) async {
    return await home_r_d.fetchNewesBookentity(pageNumber: param as int);
  }
}
