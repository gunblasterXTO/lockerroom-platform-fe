part of 'pages.dart';

abstract class Routes {
  Routes._();
  static const index = _Paths.index;
  static const login = _Paths.login;
  static const home = _Paths.home;
}

abstract class _Paths {
  _Paths._();
  static const index = '/';
  static const login = '/login';
  static const home = '/home';
}
