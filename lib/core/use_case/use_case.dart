import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class use_case<type, param> {
  Future<Either<Failure, type>> call([param? param]);
}
