import 'package:flutter/material.dart';
import 'package:food/app/modules/Mainhome/controllers/mainhome_controller.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CategoriesList extends GetView<MainhomeController> {
  @override
  Widget build(BuildContext context) {
    MainhomeController c = MainhomeController();
    return Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Categories", style: Theme.of(context).textTheme.headline4),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: c.categories
                      .map((e) => Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary
                                                      .withOpacity(0.3),
                                                  spreadRadius: 2,
                                                  blurRadius: 5,
                                                  offset: Offset(0, 3),
                                                ),
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Theme.of(context)
                                                  // ignore: deprecated_member_use
                                                  .accentColor),
                                          child: Image.network(
                                            e.url,
                                            width: 50,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Text(
                                            e.title,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        )
                                      ],
                                    ))
                              ],
                            ),
                          ))
                      .toList(),
                )),
          ],
        ));
  }
}
