import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_project/src/blocs/user_info/user_info_state.dart';

//todo use injectable package
class UserInfoCubit extends Cubit<UserInfoState> {
  UserInfoCubit() : super(const UserInfoState());

  Future<void> printLog() async {
    // Doing something...
    await Future.delayed(const Duration(milliseconds: 500));
    // ignore: avoid_print
    print("Pressed back button");
    emit(const UserInfoState(navigateBack: true));
  }
}
