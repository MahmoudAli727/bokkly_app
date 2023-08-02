// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/Domain/use_case/fetch_newest_books_use_case.dart';
import 'package:equatable/equatable.dart';

part 'newest_book_d_state.dart';

class NewestBookDCubit extends Cubit<NewestBookDState> {
  NewestBookDCubit(this.fetchNewestBooksUseCase) : super(NewestBookDInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  Future<void> fetchNewestBook_d({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(NewestBookDloading());
    } else {
      emit(NewestBooDPaginationLoading());
    }
    var result = await fetchNewestBooksUseCase.call();
    result.fold((failure) {
      if (pageNumber == 0) {
        emit(NewestBookDFailure(failure.toString()));
      } else {
        emit(NewestBooDPaginationFailure(failure.toString()));
      }
    }, (books) {
      emit(NewestBookDSuccess(books: books));
    });
  }
}
