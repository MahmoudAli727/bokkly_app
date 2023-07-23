// ignore_for_file: prefer_typing_uninitialized_variables

part of 'feature_cubit.dart';

abstract class FeatureState extends Equatable {
  const FeatureState();

  @override
  List<Object> get props => [];
}

class FeatureInitial extends FeatureState {}

class Featureloading extends FeatureState {}

class FeatureSuccess extends FeatureState {
  final List<BookModel> books;

  const FeatureSuccess(this.books);
}

class FeatureFailure extends FeatureState {
  final String errMessage;

  const FeatureFailure(this.errMessage);
}
