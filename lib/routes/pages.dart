import 'package:get/get.dart';
import 'package:lockerroom/modules/auth/bindings/login.dart';
import 'package:lockerroom/modules/auth/views/login.dart';
import 'package:lockerroom/modules/auth/views/welcome.dart';
import 'package:lockerroom/modules/home/home.dart';

part 'routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.index;

  static final routes = [
    GetPage(name: _Paths.index, page: () => const WelcomePage()),
    GetPage(
      name: _Paths.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(name: _Paths.home, page: () => const HomePage()),
  ];
}
