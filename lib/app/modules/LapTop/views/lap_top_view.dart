import 'package:flutter/material.dart';
import 'package:food/app/modules/LapTop/views/laptopWidget/laptopSlider.dart';
import 'package:food/app/modules/Mainhome/controllers/mainhome_controller.dart';

import 'package:get/get.dart';

import '../controllers/lap_top_controller.dart';

class LapTopView extends GetView<LapTopController> {
  final String url;
  final String title;
  final String des;
  final String price;
  final String size;
  final Color color;
  final int id;
  LapTopView(
      {required this.id,
      required this.url,
      required this.title,
      required this.des,
      required this.price,
      required this.size,
      required this.color});
  @override
  Widget build(BuildContext context) {
    MainhomeController c = MainhomeController();
    bool boolTrue = false;
    return Scaffold(
        // ignore: dead_code
        appBar: boolTrue ? AppBar() : null,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              laptopslider(),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    c.Bestselling[id].title,
                    style: Theme.of(context).textTheme.subtitle1,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150,
                    height: 40,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: 1,
                            color: Theme.of(context).colorScheme.secondary)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Size"),
                        Text(c.Bestselling[id].size),
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: 1,
                            color: Theme.of(context).colorScheme.secondary)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Color"),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: c.Bestselling[id].color,
                          ),
                          width: 20,
                          height: 20,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    "Details",
                    style: Theme.of(context).textTheme.headline4,
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    c.Bestselling[id].des,
                    style: Theme.of(context).textTheme.subtitle2,
                  ))
            ])));
  }
}
