part of 'newest_cubit.dart';

abstract class NewestState extends Equatable {
  const NewestState();

  @override
  List<Object> get props => [];
}

class NewestInitial extends NewestState {}

class Newsetloading extends NewestState {}

class NewsetSuccess extends NewestState {
  final List<BookModel> books;

  const NewsetSuccess(this.books);
}

class NewsetFailure extends NewestState {
  final String errMessage;

  const NewsetFailure(this.errMessage);
}
