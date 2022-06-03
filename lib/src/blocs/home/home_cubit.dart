import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_project/src/blocs/home/home_state.dart';
import 'package:test_project/src/models/user_entity.dart';
import 'package:test_project/src/repository/user_repository.dart';

class HomeCubit extends Cubit<HomeState> {
  final UserRepository _repository;

  HomeCubit(this._repository) : super(const HomeState(users: [], isLoading: true)) {
    //todo better to call in UI with cubit..getUsers
    _getUsers();
  }

  void _getUsers() async {
    final List<UserEntity> users = await _repository.getUsers();

    emit(HomeState(users: users, isLoading: false));
  }
}
