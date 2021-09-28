import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/mainhome_controller.dart';
import 'mainhomewidgets/bestsellinglist.dart';
import 'mainhomewidgets/categorieslist.dart';

class MainhomeView extends GetView<MainhomeController> {
  final int id;
  final String title;
  final String url;

  MainhomeView({required this.id, required this.title, required this.url});
  @override
  Widget build(BuildContext context) {
    bool boolTrue = false;

    return Scaffold(
      // ignore: dead_code
      appBar: boolTrue ? AppBar() : null,
      body: ListView(children: [
        SizedBox(
          height: 40,
        ),
        Container(
            height: 70,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: TextFormField(
                style: Theme.of(context).textTheme.bodyText1,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.secondary,
                        width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.secondary,
                        width: 1.0),
                  ),
                  fillColor: Theme.of(context).colorScheme.primary,
                  filled: true,
                ))),
        CategoriesList(),
        Bestsellinglist(
          id: 0,
          url: "",
          des: "",
          price: "",
          title: "",
          size: "",
          color: Colors.white,
        )
      ]),
    );
  }
}
