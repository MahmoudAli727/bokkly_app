import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'newest_state.dart';

class NewestCubit extends Cubit<NewestState> {
  NewestCubit() : super(NewestInitial());
}
