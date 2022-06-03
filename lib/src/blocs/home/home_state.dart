import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_project/src/models/user_entity.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<UserEntity> users,
    required bool isLoading,
  }) = _HomeState;
}
