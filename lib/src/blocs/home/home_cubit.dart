import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:test_project/src/blocs/home/home_state.dart';
import 'package:test_project/src/models/user_entity.dart';
import 'package:test_project/src/repository/user_repository.dart';

@Singleton()
class HomeCubit extends Cubit<HomeState> {
  final UserRepository _repository;

  HomeCubit(this._repository) : super(const HomeState());

  void getUsers() async {
    final List<UserEntity> users = await _repository.getUsers();

    emit(state.copyWith(users: users, isLoading: false));
  }
}
