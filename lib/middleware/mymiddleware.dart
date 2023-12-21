import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';

class mymiddleware extends GetMiddleware {
  bool ans = false;
  @override
  RouteSettings? redirect(String? route) {
    if (ans) return RouteSettings(name: "/mainpage");
  }
}
