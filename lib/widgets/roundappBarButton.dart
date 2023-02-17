// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class roundappBarButton extends StatelessWidget {
  // const appBarButton({super.key});
  IconData icon_;
  void Function() fun_;
  Color iconcolor;
  roundappBarButton({
    required this.icon_,
    required this.fun_,
    this.iconcolor = Colors.black,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Color.fromARGB(225, 191, 188, 188),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: fun_,
        icon: Icon(
          icon_,
          color: iconcolor,
        ),
      ),
    );
  }
}
