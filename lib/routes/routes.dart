part of 'pages.dart';

abstract class Routes {
  Routes._();
  static const welcome = _Paths.welcome;
  static const login = _Paths.login;
  static const home = _Paths.home;
}

abstract class _Paths {
  _Paths._();
  static const welcome = '/welcome';
  static const login = '/login';
  static const home = '/home';
}
