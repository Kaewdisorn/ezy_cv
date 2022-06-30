// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const ROOT = _Paths.ROOT;
  static const HOME = _Paths.HOME;
}

abstract class _Paths {
  static const ROOT = '/';
  static const HOME = '/home';
}
