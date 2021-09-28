import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:food/app/modules/GameController/bindings/game_controller_binding.dart';
import 'package:food/app/modules/GameController/views/game_controller_view.dart';
import 'package:food/app/modules/LapTop/bindings/lap_top_binding.dart';
import 'package:food/app/modules/LapTop/views/lap_top_view.dart';
import 'package:food/app/modules/LeatherBag/bindings/leather_bag_binding.dart';
import 'package:food/app/modules/LeatherBag/views/leather_bag_view.dart';
import 'package:food/app/modules/Mainhome/bindings/mainhome_binding.dart';
import 'package:food/app/modules/Mainhome/views/mainhome_view.dart';
import 'package:food/app/modules/account/bindings/account_binding.dart';
import 'package:food/app/modules/account/views/account_view.dart';
import 'package:food/app/modules/home/bindings/home_binding.dart';
import 'package:food/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MAINHOME,
      page: () => MainhomeView(
        id: 0,
        title: '',
        url: '',
      ),
      binding: MainhomeBinding(),
    ),
    GetPage(
      name: _Paths.GAME_CONTROLLER,
      page: () => GameControllerView(
        id: 0,
        title: "",
        url: "",
        des: "",
        color: Colors.white,
        price: "",
        size: "",
      ),
      binding: GameControllerBinding(),
    ),
    GetPage(
      name: _Paths.LAP_TOP,
      page: () => LapTopView(
        id: 0,
        title: "",
        url: "",
        des: "",
        color: Colors.white,
        price: "",
        size: "",
      ),
      binding: LapTopBinding(),
    ),
    GetPage(
      name: _Paths.LEATHER_BAG,
      page: () => leatherbagView(
        id: 0,
        title: "",
        url: "",
        des: "",
        color: Colors.white,
        price: "",
        size: "",
      ),
      binding: LeatherBagBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => AccountView(icon: "", title: ""),
      binding: AccountBinding(),
    ),
  ];
}
