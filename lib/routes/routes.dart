import 'package:flutter_base_project/screens/splash_screen.dart';
import 'package:get/get.dart';

List<GetPage> routeConstants() {
  var routes = [GetPage(name: '/splash', page: () => SplashScreen())];

  return routes;
}
