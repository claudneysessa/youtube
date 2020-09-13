import 'package:flutter_get/presentation/views/home/home_view.dart';
import 'package:flutter_get/presentation/views/page1/page1_view.dart';
import 'package:flutter_get/presentation/views/page2/page2_view.dart';
import 'package:flutter_get/presentation/views/page3/page3_view.dart';
import 'package:get/route_manager.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
    ),
    GetPage(
      name: Routes.PAGE1,
      page: () => Page1View(),
    ),
    GetPage(
      name: Routes.PAGE2,
      page: () => Page2View(),
    ),
    GetPage(
      name: Routes.PAGE3,
      page: () => Page3View(),
    ),
  ];
}
