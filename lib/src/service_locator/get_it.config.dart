// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../blocs/home/home_cubit.dart' as _i8;
import '../blocs/user_info/user_info_cubit.dart' as _i3;
import '../repository/user_repository.dart' as _i6;
import '../repository/user_repository_impl.dart' as _i7;
import '../services/user/mock_user_service.dart' as _i5;
import '../services/user/user_service.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $configureDependencies(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.UserInfoCubit>(_i3.UserInfoCubit());
  gh.singleton<_i4.UserService>(_i5.MockUserService());
  gh.singleton<_i6.UserRepository>(
      _i7.UserRepositoryImpl(get<_i4.UserService>()));
  gh.singleton<_i8.HomeCubit>(_i8.HomeCubit(get<_i6.UserRepository>()));
  return get;
}
