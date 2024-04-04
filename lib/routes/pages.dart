import 'package:get/get.dart';
import 'package:lockerroom/common/helper/ui_helper.dart';
import 'package:lockerroom/modules/auth/views/login.dart';
import 'package:lockerroom/modules/auth/views/register.dart';
import 'package:lockerroom/modules/auth/views/test.dart';
import 'package:lockerroom/modules/auth/views/welcome.dart';
import 'package:lockerroom/modules/home/home.dart';

part 'routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.index;

  static final routes = [
    GetPage(name: Routes.test, page: () => const TestPage()), // TODO: remove
    GetPage(
      name: Routes.index,
      page: () => const WelcomePage(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
      transition: UIConst.clickButtonTransition,
      transitionDuration: Duration(
        milliseconds: UIConst.pageTransitionDuration,
      ),
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterPage(),
      transition: UIConst.clickButtonTransition,
      transitionDuration: Duration(
        milliseconds: UIConst.pageTransitionDuration,
      ),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      transition: UIConst.clickButtonTransition,
      transitionDuration: Duration(
        milliseconds: UIConst.pageTransitionDuration,
      ),
    ),
  ];
}
