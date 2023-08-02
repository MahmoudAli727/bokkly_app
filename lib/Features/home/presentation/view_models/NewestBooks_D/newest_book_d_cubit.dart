// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/Domain/use_case/fetch_newest_books_use_case.dart';
import 'package:equatable/equatable.dart';

part 'newest_book_d_state.dart';

class NewestBookDCubit extends Cubit<NewestBookDState> {
  NewestBookDCubit(this.fetchNewestBooksUseCase) : super(NewestBookDInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  Future<void> fetchNewestBook_d() async {
    emit(NewestBookDloading());
    var result = await fetchNewestBooksUseCase.call();
    result.fold((failure) {
      emit(NewestBookDFailure(failure.toString()));
    }, (books) {
      emit(NewestBookDSuccess(books));
    });
  }
}
