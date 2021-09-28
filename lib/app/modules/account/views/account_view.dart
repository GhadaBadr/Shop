import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
  final String icon;
  final String title;

  AccountView({required this.icon, required this.title});
  @override
  Widget build(BuildContext context) {
    AccountController a = AccountController();
    bool boolTrue = false;
    return Scaffold(
      // ignore: dead_code
      appBar: boolTrue ? AppBar() : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      "https://img.freepik.com/free-vector/girl-shy-character_1450-155.jpg?size=338&ext=jpg",
                      width: 100.0,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ghada Badr Eldin",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        "ghada.badr.21@gmail.com",
                        style: Theme.of(context).textTheme.headline3,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: a.iconslist
                  .map((e) => Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Image.network(
                                      e.icon,
                                      width: 50,
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
                                )),
                            Container(
                                child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.navigate_next),
                            ))
                          ],
                        ),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
