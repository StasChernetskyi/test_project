import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_info_state.dart';

//todo use injectable package
class UserInfoCubit extends Cubit<UserInfoState> {
  UserInfoCubit() : super(UserInfoState());

  //todo this is technical debt
  // ignore: avoid_print
  void printLog() => print("Pressed back button");
}
