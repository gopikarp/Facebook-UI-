// import 'package:facebook/asset.dart';
import 'package:facebook/asset.dart';
import 'package:facebook/widgets/avathar.dart';
import 'package:flutter/material.dart';

class suggestionCard extends StatelessWidget {
  final String image_;
  final String name;
  final String mutual;
  // final Function() addBt;
  // final Function() removeBt;

  suggestionCard({
    required this.image_,
    required this.name,
    required this.mutual,
    // required this.addBt,
    // required this.removeBt
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 0),
      width: 270,
      child: Stack(
        children: [
          suggestion_Image(),
          imageDetails(),
        ],
      ),
    );
  }

  Positioned imageDetails() {
    return Positioned(
      right: 0,
      top: 209,
      left: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15)),
        ),
        height: 130,
        // color: Colors.grey[200],
        child: Column(
          children: [
            ListTile(
              title: Text(name),
              subtitle: Text(mutual),
            ),
            bt(),
          ],
        ),
      ),
    );
  }

  Container bt() {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        iconButton(
          btAction: () {},
          btIcon: Icons.add,
          txt: 'Add freind',
        ),
        remBt(txt: 'Remove '),
        // removeBt_(btname: 'Add Button'),
      ]),
    );
  }

  OutlinedButton remBt({
    required String txt,
  }) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.grey[110],
      ),
      onPressed: () {},
      child: Text(
        txt,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

//  ElevatedButton
  iconButton({
    required void Function() btAction,
    required IconData btIcon,
    required String txt,
  }) {
    return ElevatedButton.icon(
      style: ButtonStyle(),
      onPressed: () {},
      icon: Icon(Icons.add),
      label: Text(txt),
    );
  }

  suggestion_Image() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: avathar != null
            ? Image.asset(
                image_,
                height: 215,
                fit: BoxFit.fill,
              )
            : SizedBox(),
      ),
    );
  }
}
