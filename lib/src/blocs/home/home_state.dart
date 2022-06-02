part of 'home_cubit.dart';

class HomeState extends Equatable {
  final List<UserEntity>? users;

  const HomeState(this.users);

  @override
  List<Object?> get props => [users];
}
