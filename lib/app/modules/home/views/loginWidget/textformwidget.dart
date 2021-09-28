import 'package:flutter/material.dart';

Widget form(BuildContext context, String title, String label) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title, style: Theme.of(context).textTheme.bodyText1),
      TextFormField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: Theme.of(context).textTheme.subtitle2,
          border: UnderlineInputBorder(),
        ),
      )
    ],
  );
}
