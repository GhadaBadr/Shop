import 'package:flutter/material.dart';
import 'package:food/app/modules/Mainhome/views/bottomnaviagtionbar.dart';
import 'package:food/app/modules/home/views/loginWidget/textformwidget.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            // ignore: deprecated_member_use
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(10)),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome,",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Text(
                    "Sing in to Continue",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sing Up",
                    style: Theme.of(context).textTheme.headline6,
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          form(
            context,
            "Email",
            "Enter your Email",
          ),
          SizedBox(
            height: 50,
          ),
          form(
            context,
            "Password",
            "Enter your Password",
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(" Forget Password ?",
                  style: Theme.of(context).textTheme.bodyText1),
            ),
          ]),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
            ),
            onPressed: () {
              // Get.to(MainhomeView(
              //   id: 0,
              //   url: '',
              //   title: '',
              // ));
              Get.to(BottomnavigationBar());
            },
            child:
                Text('SING IN', style: Theme.of(context).textTheme.headline5),
          )
        ]));
  }
}
