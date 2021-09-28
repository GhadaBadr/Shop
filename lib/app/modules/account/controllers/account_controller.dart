// ignore_for_file: unnecessary_overrides

import 'package:food/app/modules/account/views/account_view.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {
  final iconslist = [
    AccountView(
      icon:
          "https://raw.githubusercontent.com/AhmedLSayed9/shopzler/master/assets/images/icons/menu_icons/1.png",
      title: " Edit Profile",
    ),
    AccountView(
      icon:
          "https://raw.githubusercontent.com/AhmedLSayed9/shopzler/master/assets/images/icons/menu_icons/3.png",
      title: "Order History",
    ),
    AccountView(
      icon:
          "https://raw.githubusercontent.com/AhmedLSayed9/shopzler/master/assets/images/icons/menu_icons/4.png",
      title: "Cards",
    ),
    AccountView(
      icon:
          "https://raw.githubusercontent.com/AhmedLSayed9/shopzler/master/assets/images/icons/menu_icons/5.png",
      title: "Notifications",
    ),
    AccountView(
      icon:
          "https://raw.githubusercontent.com/AhmedLSayed9/shopzler/master/assets/images/icons/menu_icons/6.png",
      title: "Log Out",
    ),
  ];
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
