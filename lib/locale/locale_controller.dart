import 'package:flutter/Cupertino.dart';
import 'package:get/get.dart';
import 'package:myproject/main.dart';

class MyLocaleController extends GetxController {
  Locale intialLang =
      sharedpref.getString("lang") == "en" ? Locale("en") : Locale("ar");

  void changeLang(String codelang) async {
    Locale locale = Locale(codelang);
    await sharedpref.setString("lang", codelang);

    Get.updateLocale(locale);
  }
}
