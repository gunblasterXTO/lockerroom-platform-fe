part of 'pages.dart';

abstract class Routes {
  Routes._();
  static const test = _Paths.test;

  static const index = _Paths.index;
  static const login = _Paths.login;
  static const register = _Paths.register;

  static const home = _Paths.home;
}

abstract class _Paths {
  _Paths._();
  static const test = '/test';
  static const index = '/';
  static const login = '/login';
  static const register = '/register';
  static const home = '/home';
}
