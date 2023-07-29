// ignore_for_file: camel_case_types

import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class home_repo_d {
  Future<Either<Failure, List<book_entity>>> fetchFeauredBookentity();
  Future<Either<Failure, List<book_entity>>> fetchNewesBookentity();
}