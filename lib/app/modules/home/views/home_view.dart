import 'package:flutter/material.dart';
import 'package:food/app/modules/home/views/loginWidget/buttonwidget.dart';
import 'package:food/app/modules/home/views/loginWidget/login.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    bool boolTrue = false;
    return Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        // ignore: dead_code
        appBar: boolTrue ? AppBar() : null,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 80,
            ),
            Login(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "-OR-",
                style: Theme.of(context).textTheme.headline4,
              )),
            ),
            button(
                context,
                "https://raw.githubusercontent.com/AhmedLSayed9/shopzler/master/assets/images/icons/facebook.png",
                'Sing In with Facebook'),
            button(
                context,
                "https://raw.githubusercontent.com/AhmedLSayed9/shopzler/master/assets/images/icons/google.png",
                'Sing In with Google'),
          ],
        ));
  }
}
