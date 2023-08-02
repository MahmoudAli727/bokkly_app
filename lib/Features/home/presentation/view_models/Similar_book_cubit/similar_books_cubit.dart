// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.home_repo) : super(SimilarBooksInitial());
  final HomeRepo home_repo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await home_repo.fetchSimilarBooks(
      category: category,
    );
    result.fold((Failure) {
      emit(SimilarBooksFailure(Failure.toString()));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
