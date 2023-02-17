import 'package:facebook/asset.dart';
import 'package:facebook/widgets/avathar.dart';
import 'package:flutter/material.dart';

class roomSec extends StatelessWidget {
  const roomSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          right: 10,
          left: 10,
        ),
        children: [
          roomBT(),
          avathar(displayimg: aneeta, displaystatus: true),
          avathar(displayimg: vil, displaystatus: true),
          avathar(displayimg: dude, displaystatus: true),
          avathar(displayimg: muthu, displaystatus: true),
          avathar(displayimg: monkey, displaystatus: true),
        ],
      ),
    );
  }

  OutlinedButton roomBT() {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.video_call,
        color: Colors.blue,
      ),
      label: Text(
        'create \nroom ',
      ),
      style: OutlinedButton.styleFrom(
        shape: StadiumBorder(),
      ),
    );
  }
}
