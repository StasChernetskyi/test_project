import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'second_state.dart';

class SecondCubit extends Cubit<SecondState> {
  SecondCubit() : super(SecondInitial());
}
