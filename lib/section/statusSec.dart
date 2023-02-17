// import 'package:facebook_ui/asset.dart';
import 'package:facebook/asset.dart';
import 'package:facebook/widgets/avathar.dart';
import 'package:flutter/material.dart';

class statuSec extends StatelessWidget {
  const statuSec({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: avathar(
        displayimg: cru,
        displaystatus: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: 'whats on your mind?',
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
