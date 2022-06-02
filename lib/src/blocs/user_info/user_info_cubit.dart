import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_info_state.dart';

class UserInfoCubit extends Cubit<UserInfoState> {
  UserInfoCubit() : super(UserInfoState());

  // ignore: avoid_print
  void printLog() => print("Pressed back button");
}
