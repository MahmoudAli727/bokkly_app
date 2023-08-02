// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_state.dart';

class FeatureCubit extends Cubit<FeatureState> {
  FeatureCubit(this.home_repo) : super(FeatureInitial());
  final HomeRepo home_repo;
  Future<void> fetchFeaturedBooks() async {
    emit(Featureloading());
    var result = await home_repo.fetchFeatureBooks();
    result.fold((Failure) {
      emit(FeatureFailure(Failure.toString()));
    }, (books) {
      emit(FeatureSuccess(books));
    });
  }
}
