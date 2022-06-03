import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:test_project/src/service_locator/get_it.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$configureDependencies',
)
void configureDependencies() => $configureDependencies(getIt);
