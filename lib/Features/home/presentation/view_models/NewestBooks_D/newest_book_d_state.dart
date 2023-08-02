part of 'newest_book_d_cubit.dart';

abstract class NewestBookDState extends Equatable {
  const NewestBookDState();

  @override
  List<Object> get props => [];
}

class NewestBookDInitial extends NewestBookDState {}

class NewestBookDloading extends NewestBookDState {}

class NewestBooDPaginationLoading extends NewestBookDState {}

class NewestBooDPaginationFailure extends NewestBookDState {
  final String errmessage;

  const NewestBooDPaginationFailure(this.errmessage);
}

class NewestBookDSuccess extends NewestBookDState {
  final List<book_entity> books;

  const NewestBookDSuccess({required this.books});
}

class NewestBookDFailure extends NewestBookDState {
  final String errmessage;

  const NewestBookDFailure(this.errmessage);
}
