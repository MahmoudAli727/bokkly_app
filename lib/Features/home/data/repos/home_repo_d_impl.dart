import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/Domain/repo/home_repo_d.dart';
import 'package:bookly_app/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpldomain extends home_repo_d {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpldomain({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSource,
  });
  @override
  Future<Either<Failure, List<book_entity>>> fetchFeauredBookentity(
      {int pageNumber = 0}) async {
    List<book_entity> bookList = [];
    try {
      bookList = homeLocalDataSource.fetchFeatureBooks(
        pageNumber: pageNumber,
      );
      if (bookList.isNotEmpty) {
        return right(bookList);
      }
      bookList =
          await homeRemoteDataSource.fetchFeatureBooks(pageNumber: pageNumber);
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<book_entity>>> fetchNewesBookentity(
      {int pageNumber = 0}) async {
    List<book_entity> bookList = [];
    try {
      bookList = homeLocalDataSource.fetchNewestBooks(pageNumber: pageNumber);
      if (bookList.isNotEmpty) {
        return right(bookList);
      }
      bookList =
          await homeRemoteDataSource.fetchNewestBooks(pageNumber: pageNumber);
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  // @override
  // Future<Either<Failure, List<book_entity>>> fetchSimilarBooks({required String category, int pageNumber = 0}) {
  //   // TODO: implement fetchSimilarBooks
  //   throw UnimplementedError();
  // }
}
