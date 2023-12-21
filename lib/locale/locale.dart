import 'package:get/get.dart';

class MyLocale implements Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "0": " أهلاً",
          "1": "رقم الهاتف",
          "2": "كلمة المرور",
          "3": "تسجيل الدخول",
          "4": "نسيت كلمة المرور ؟",
          "5": "إنشاء حساب",
          "6": "الاسم الأول",
          "7": "الاسم الثاني",
          "8": "تغيير اللغة",
        },
        "en": {
          "0": " Welcome",
          "1": "Number of phone",
          "2": "Password",
          "3": "Log in",
          "4": "forget password ?",
          "5": "Sign up",
          "6": " First name",
          "7": "Last name ",
          "8": " change language",
        }
      };
}
