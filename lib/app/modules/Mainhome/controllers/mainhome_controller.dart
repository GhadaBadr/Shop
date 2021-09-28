import 'package:flutter/material.dart';
import 'package:food/app/modules/Mainhome/views/mainhome_view.dart';
import 'package:food/app/modules/Mainhome/views/mainhomewidgets/bestsellinglist.dart';
import 'package:get/get.dart';

class MainhomeController extends GetxController {
  // ignore: todo
  //TODO: Implement MainhomeController
  final categories = [
    MainhomeView(
        id: 0,
        title: "Women",
        url: "https://cdn-icons-png.flaticon.com/512/1077/1077995.png"),
    MainhomeView(
        id: 1,
        title: "Gaming",
        url: "https://cdn-icons-png.flaticon.com/512/686/686589.png"),
    MainhomeView(
        id: 2,
        title: "Men",
        url: "https://cdn-icons-png.flaticon.com/512/5651/5651164.png"),
    MainhomeView(
        id: 3,
        title: "Gadgets",
        url: "https://cdn-icons-png.flaticon.com/512/1077/1077185.png"),
    MainhomeView(
        id: 4,
        title: "Devices",
        url: "https://cdn-icons-png.flaticon.com/512/2777/2777142.png"),
    MainhomeView(
        id: 0,
        title: "Women",
        url: "https://cdn-icons-png.flaticon.com/512/1077/1077995.png"),
    MainhomeView(
        id: 1,
        title: "Gaming",
        url: "https://cdn-icons-png.flaticon.com/512/686/686589.png"),
    MainhomeView(
        id: 2,
        title: "Men",
        url: "https://cdn-icons-png.flaticon.com/512/5651/5651164.png"),
    MainhomeView(
        id: 3,
        title: "Gadgets",
        url: "https://cdn-icons-png.flaticon.com/512/1077/1077185.png"),
    MainhomeView(
        id: 4,
        title: "Devices",
        url: "https://cdn-icons-png.flaticon.com/512/2777/2777142.png"),
  ];
  // ignore: non_constant_identifier_names
  final Bestselling = [
    Bestsellinglist(
        id: 0,
        url:
            "https://images.pexels.com/photos/275033/pexels-photo-275033.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        title: "Game Controller",
        des:
            "The controller specially specially, game controller, gaming controller, or simply controller, is an input device used with video games or entertainment systems to provide input to a video game, typically to control an object or character in the game. ... USB game controllers could also be connected to a computer with a USB port.",
        price: "\$26 ",
        size: "L",
        color: Colors.red),
    Bestsellinglist(
        id: 1,
        url:
            "https://images.pexels.com/photos/459653/pexels-photo-459653.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        title: "2021 Laptop",
        des:
            "2021 Newest Laptop,15.6 full  A laptop, laptop computer, or notebook computer is a small, portable personal computer (PC) with a screen and alphanumeric keyboard. ... Laptops are folded shut for transportation, and thus are suitable for mobile use. Its name comes from lap, as it was deemed practical to be placed on a person's lap when being used.",
        price: "\$600",
        size: "15.6 inch",
        color: Colors.black),
    Bestsellinglist(
        id: 2,
        url:
            "https://images.pexels.com/photos/4830925/pexels-photo-4830925.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        title: "Leather Bag",
        des:
            "Leather satchels are usually made of firm, thick cow leather. The leather is vegetable-tanned. Historically, school satchels were inspired by soldiers' satchels. The teacher's bag is traditionally made of leather and has been much less replaced by synthetic materials.",
        price: "\$20 ",
        size: "29*18*10",
        color: Colors.blue),
    Bestsellinglist(
        id: 0,
        url:
            "https://images.pexels.com/photos/275033/pexels-photo-275033.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        title: "Game Controller",
        des:
            "The controller specially specially, game controller, gaming controller, or simply controller, is an input device used with video games or entertainment systems to provide input to a video game, typically to control an object or character in the game. ... USB game controllers could also be connected to a computer with a USB port.",
        price: "\$26 ",
        size: "L",
        color: Colors.red),
    Bestsellinglist(
        id: 1,
        url:
            "https://images.pexels.com/photos/459653/pexels-photo-459653.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        title: "2021 Laptop",
        des:
            "2021 Newest Laptop,15.6 full  A laptop, laptop computer, or notebook computer is a small, portable personal computer (PC) with a screen and alphanumeric keyboard. ... Laptops are folded shut for transportation, and thus are suitable for mobile use. Its name comes from lap, as it was deemed practical to be placed on a person's lap when being used.",
        price: "\$600",
        size: "15.6 inch",
        color: Colors.black),
    Bestsellinglist(
        id: 2,
        url:
            "https://images.pexels.com/photos/4830925/pexels-photo-4830925.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        title: "Leather Bag",
        des:
            "Leather satchels are usually made of firm, thick cow leather. The leather is vegetable-tanned. Historically, school satchels were inspired by soldiers' satchels. The teacher's bag is traditionally made of leather and has been much less replaced by synthetic materials.",
        price: "\$20 ",
        size: "29*18*10",
        color: Colors.blue),
  ];

  final count = 0.obs;
  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }

  @override
  // ignore: unnecessary_overrides
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
