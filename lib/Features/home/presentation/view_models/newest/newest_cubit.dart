// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_state.dart';

class NewestCubit extends Cubit<NewestState> {
  NewestCubit(this.home_repo) : super(NewestInitial());
  final HomeRepo home_repo;
  Future<void> fetchBestSellerBooked() async {
    emit(Newsetloading());
    var result = await home_repo.fetchBestSellerBooks();
    result.fold((Failure) {
      emit(NewsetFailure(Failure.toString()));
    }, (books) {
      emit(NewsetSuccess(books));
    });
  }
}
