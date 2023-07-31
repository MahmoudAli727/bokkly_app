// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types

part of 'featured_book_d_cubit.dart';

abstract class FeaturedBookDState extends Equatable {
  const FeaturedBookDState();

  @override
  List<Object> get props => [];
}

class FeaturedBook_DInitial extends FeaturedBookDState {}

class FeaturedBook_DLoading extends FeaturedBookDState {}

class FeaturedBook_DFailure extends FeaturedBookDState {
  final String errmessage;

  const FeaturedBook_DFailure(this.errmessage);
}

class FeaturedBook_DSuccess extends FeaturedBookDState {
  final List<book_entity> books;
  FeaturedBook_DSuccess({
    required this.books,
  });
}
