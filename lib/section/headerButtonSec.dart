import 'package:flutter/material.dart';

class headerButtonSec extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  headerButtonSec({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree,
    // required IconData icon_,
  });

  @override
  Widget build(BuildContext context) {
    Widget vdiv = VerticalDivider(
      thickness: 2,
      color: Color.fromARGB(255, 210, 210, 210),
    );
    return Container(
      height: 29,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buttonOne,
          // headerButton(
          //     icon_: Icons.video_call,
          //     buttontext: 'Photos',
          //     buttoncolor: Colors.green),
          vdiv,
          buttonTwo,
          // headerButton(
          //     icon_: Icons.image,
          //     buttontext: 'Photos',
          //     buttoncolor: Colors.green),
          vdiv,
          buttonThree,
          // headerButton(
          //     icon_: Icons.video_call,
          //     buttontext: 'Room',
          //     buttoncolor: Colors.red),
        ],
      ),
    );
  }
}
