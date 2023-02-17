import 'package:flutter/material.dart';

Widget headerButton({
  required IconData icon_,
  required String buttontext,
  required Color buttoncolor,
}) {
  return TextButton.icon(
    onPressed: () {},
    icon: Icon(
      icon_,
      size: 20,
      color: buttoncolor,
    ),
    label: Text(
      buttontext,
      style: TextStyle(color: Colors.black),
    ),
  );
}
