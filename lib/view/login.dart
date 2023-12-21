import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:myproject/locale/locale_controller.dart';
import 'package:myproject/view/mainpage.dart';
import 'package:myproject/view/signup.dart';

int a = 0;

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    MyLocaleController controllerLang = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset('images/img3.jpg', height: 200),
            const SizedBox(
              height: 10,
            ),
            Text(
              "0".tr,
              style: const TextStyle(
                color: Color.fromARGB(255, 51, 80, 94),
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextField(
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Colors.black),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  hintText: "1".tr,
                  hintStyle: const TextStyle(color: Colors.blueGrey),
                  prefixIcon: const Icon(Icons.phone, color: Color(0XFF0F7986)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 50, 157, 211), width: 1.5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 51, 80, 94), width: 1.5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp("[a-zA-Z0-9]"))
                ],
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.lock_outline, color: Color(0XFF0F7986)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 50, 157, 211), width: 1.5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 51, 80, 94),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "2".tr,
                  hintStyle: const TextStyle(color: Colors.blueGrey),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            MaterialButton(
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              minWidth: 200,
              onPressed: () {
                Get.offAllNamed("mainpage");
              },
              color: const Color(0XFF21CFC3),
              child: Text("3".tr,
                  style: const TextStyle(color: Color(0XFF0F7986))),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 115, vertical: 15),
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    Text(
                      "4".tr,
                      style: const TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed("signup");
                      },
                      child: Text(
                        "5".tr,
                        style: const TextStyle(
                          color: Color(0XFF0F7986),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                if (a == 0) {
                  controllerLang.changeLang("ar");
                  a = 1;
                } else {
                  controllerLang.changeLang("en");
                  a = 0;
                }
              },
              child: Text(
                "8".tr,
                style: const TextStyle(
                  color: Color(0XFF0F7986),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              decoration: const BoxDecoration(shape: BoxShape.rectangle),
              child: Image.asset('images/img4.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
