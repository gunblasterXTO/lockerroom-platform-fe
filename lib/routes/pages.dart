import 'package:get/get.dart';
import 'package:lockerroom/modules/auth/bindings/login_bindigs.dart';
import 'package:lockerroom/modules/auth/views/login.dart';

part 'routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.login;

  static final routes = [
    GetPage(
        name: _Paths.login, page: () => LoginPage(), binding: LoginBinding())
  ];
}
