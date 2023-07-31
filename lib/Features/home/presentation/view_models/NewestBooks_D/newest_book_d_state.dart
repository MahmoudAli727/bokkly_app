part of 'newest_book_d_cubit.dart';

abstract class NewestBookDState extends Equatable {
  const NewestBookDState();

  @override
  List<Object> get props => [];
}

class NewestBookDInitial extends NewestBookDState {}

class NewestBookDloading extends NewestBookDState {}

class NewestBookDSuccess extends NewestBookDState {
  final List<book_entity> books;

  const NewestBookDSuccess(this.books);
}

class NewestBookDFailure extends NewestBookDState {
  final String errmessage;

  const NewestBookDFailure(this.errmessage);
}
