import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
@immutable
class UserEntity with _$UserEntity {
  const UserEntity._();

  const factory UserEntity({
    required int id,
    required String firstName,
    required String lastName,
    required String imageUrl,
  }) = _UserEntity;

  String fullName() => "$firstName $lastName";
}
