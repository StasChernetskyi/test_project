import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int id;
  final String firstName;
  final String lastName;
  final String imageUrl;

  const UserEntity({required this.id, required this.firstName, required this.lastName, required this.imageUrl});

  UserEntity copyWith({String? firstName, String? lastName, String? imageUrl}) {
    return UserEntity(
      id: id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  String fullName() => "$firstName $lastName";

  @override
  List<Object?> get props => [firstName, lastName, imageUrl];
}
