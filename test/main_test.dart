import 'blocs/home_cubit_test.dart';
import 'blocs/user_info_cubit_test.dart';
import 'user/user_test.dart';
import 'user_service/user_service_test.dart';
import 'widget/widget_test.dart';

void main() {
  UserTest().main();
  UserServiceTest().main();
  HomeCubitTest().main();
  UserInfoCubitTest().main();

  WidgetTest().main();
}
