import 'package:flutter/material.dart';
import 'package:food/app/modules/GameController/views/game_controller_view.dart';
import 'package:food/app/modules/LapTop/views/lap_top_view.dart';
import 'package:food/app/modules/LeatherBag/views/leather_bag_view.dart';
import 'package:food/app/modules/Mainhome/controllers/mainhome_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Bestsellinglist extends GetView<MainhomeController> {
  final String url;
  final String title;
  final String des;
  final String price;
  final String size;
  final Color color;
  final int id;

  Bestsellinglist(
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
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text("Best Selling",
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline4),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: Theme.of(context).textTheme.bodyText1,
                      )),
                ],
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: c.Bestselling.map((e) => Container(
                        child: Row(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                if (e.id == 0) {
                                  Get.to(GameControllerView(
                                    id: 0,
                                    url: "",
                                    color: Colors.white,
                                    des: "",
                                    price: "",
                                    size: "",
                                    title: "",
                                  ));
                                } else if (e.id == 1) {
                                  Get.to(LapTopView(
                                    id: 1,
                                    title: "",
                                    url: "",
                                    des: "",
                                    color: Colors.white,
                                    price: "",
                                    size: "",
                                  ));
                                } else if (e.id == 2) {
                                  Get.to(leatherbagView(
                                    id: 2,
                                    title: "",
                                    url: "",
                                    des: "",
                                    color: Colors.white,
                                    price: "",
                                    size: "",
                                  ));
                                }
                              },
                              child: Container(
                                  width: 200,
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          child: Image.network(
                                        e.url,
                                        width: 200,
                                        height: 300,
                                        fit: BoxFit.cover,
                                      )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Text(
                                          e.title,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 3),
                                          child: Text(
                                            e.des,
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline3,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Text(
                                          e.price,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2,
                                        ),
                                      ),
                                    ],
                                  )),
                            )
                          ],
                        ),
                      )).toList(),
                )),
          ],
        ));
  }
}
