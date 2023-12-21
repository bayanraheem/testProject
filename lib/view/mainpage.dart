import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Center(
            child: Column(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.brightness_medium_sharp))
              ],
            ),
          ),
        ));
  }
}
