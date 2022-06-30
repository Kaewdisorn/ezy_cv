import 'package:ezy_cv/app/bindings/root_binding.dart';
import 'package:ezy_cv/app/views/root_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => RootView(),
      binding: RootBinding(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
    ),
  ];
}
