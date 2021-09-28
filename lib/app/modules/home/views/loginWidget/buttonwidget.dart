import 'package:flutter/material.dart';

Widget button(BuildContext context, String url, String title) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Color(4290624957), width: 1),
      borderRadius: BorderRadius.circular(5),
    ),
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Theme.of(context).canvasColor,
          minimumSize: Size(double.infinity, 50),
          elevation: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network(
            url,
            width: 30,
          ),
          Text(title, style: Theme.of(context).textTheme.bodyText1),
        ],
      ),
      onPressed: () {},
    ),
  );
}
