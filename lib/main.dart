import 'package:flutter/material.dart';
import 'package:myproject/locale/locale.dart';
import 'package:myproject/locale/locale_controller.dart';
import 'package:myproject/middleware/mymiddleware.dart';
import 'package:myproject/view/login.dart';
import 'package:myproject/view/mainpage.dart';
import 'package:myproject/view/signup.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedpref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedpref = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyLocaleController controller = Get.put(MyLocaleController());
    return GetMaterialApp(
      //theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      locale: controller.intialLang,
      translations: MyLocale(),
      getPages: [
        GetPage(name: "/", page: () => Login(), middlewares: [mymiddleware()]),
        GetPage(
            name: "/signup",
            page: () => Signup(),
            middlewares: [mymiddleware()]),
        GetPage(name: "/mainpage", page: () => Mainpage()),
      ],
    );
  }
}
