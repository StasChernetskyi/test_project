import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String firstName;
  final String lastName;
  final String imageUrl;

  const UserEntity({required this.firstName, required this.lastName, required this.imageUrl});

  UserEntity copyWith({String? firstName, String? lastName, String? imageUrl}) {
    return UserEntity(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  @override
  List<Object?> get props => [firstName, lastName, imageUrl];
}
