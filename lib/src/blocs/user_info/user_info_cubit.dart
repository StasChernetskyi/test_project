import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_project/src/blocs/user_info/user_info_state.dart';

//todo use injectable package
class UserInfoCubit extends Cubit<UserInfoState> {
  UserInfoCubit() : super(const UserInfoState());

  //todo this is technical debt
  // ignore: avoid_print
  void printLog() => print("Pressed back button");
}
