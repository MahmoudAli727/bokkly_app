import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/Domain/use_case/fetch_feature_books_uase_case.dart';
import 'package:equatable/equatable.dart';

part 'featured_book_d_state.dart';

class FeaturedBookDCubit extends Cubit<FeaturedBookDState> {
  FeaturedBookDCubit(this.featuredBooksUseCase)
      : super(FeaturedBook_DInitial());
  final FetchFeaturedBooksUseCase featuredBooksUseCase;
  Future<void> fetchFeaturedBook_d() async {
    emit(FeaturedBook_DInitial());
    var result = await featuredBooksUseCase.call();
    result.fold((failure) {
      emit(FeaturedBook_DFailure(failure.toString()));
    }, (books) {
      emit(FeaturedBook_DSuccess(books: books));
    });
  }
}
