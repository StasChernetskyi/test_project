import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'first_state.dart';

class FirstCubit extends Cubit<FirstState> {
  FirstCubit() : super(FirstInitial());
}
