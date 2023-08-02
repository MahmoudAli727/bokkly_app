// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/Domain/use_case/fetch_feature_books_uase_case.dart';
import 'package:equatable/equatable.dart';

part 'featured_book_d_state.dart';

class FeaturedBookDCubit extends Cubit<FeaturedBookDState> {
  FeaturedBookDCubit(this.featuredBooksUseCase)
      : super(FeaturedBook_DInitial());
  final FetchFeaturedBooksUseCase featuredBooksUseCase;
  Future<void> fetchFeaturedBook_d({int pageNumber = 0}) async {
    // emit(FeaturedBook_DInitial());
    if (pageNumber == 0) {
      emit(FeaturedBook_DLoading());
    } else {
      emit(FeaturedBook_DPaginationLoading());
    }
    var result = await featuredBooksUseCase.call(pageNumber);
    result.fold((failure) {
      if (pageNumber == 0) {
        emit(FeaturedBook_DFailure(failure.toString()));
      } else {
        emit(FeaturedBook_DPaginationFailuer(failure.toString()));
      }
    }, (books) {
      emit(FeaturedBook_DSuccess(books: books));
    });
  }
}
