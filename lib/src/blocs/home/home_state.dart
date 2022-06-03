part of 'home_cubit.dart';

//todo use freezed model
class HomeState extends Equatable {
  //todo: better to avoid null, add isLoading instead
  final List<UserEntity>? users;

  const HomeState(this.users);

  @override
  List<Object?> get props => [users];
}
