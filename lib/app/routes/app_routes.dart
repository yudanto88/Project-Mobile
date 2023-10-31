part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const WELCOME = _Paths.WELCOME;
  static const PROFILE = _Paths.PROFILE;
  static const HOMEPAGE = _Paths.HOMEPAGE;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const WELCOME = '/welcome';
  static const PROFILE = '/profile';
  static const HOMEPAGE = '/homepage';
}

final getPages = [
  GetPage(
    name: Routes.HOME,
    page: () => const HomeView(),
  ),
];
