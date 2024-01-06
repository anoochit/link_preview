import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/new-post/bindings/new_post_binding.dart';
import '../modules/new-post/views/new_post_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NEW_POST,
      page: () => const NewPostView(),
      binding: NewPostBinding(),
      fullscreenDialog: true,
    ),
  ];
}
