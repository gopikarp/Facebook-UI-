// import 'package:facebook/asset.dart';
import 'package:facebook/widgets/avathar.dart';
import 'package:facebook/widgets/roundappBarButton.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class storyCard extends StatelessWidget {
  final String labeltxt;
  final String storyimg;
  final String avathars;
  final bool storystatus;
  final bool disborder;
  storyCard({
    required this.labeltxt,
    required this.storyimg,
    required this.avathars,
    this.storystatus = false,
    this.disborder = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        image: DecorationImage(
          image: AssetImage(
            storyimg,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            child: storystatus
                ? roundappBarButton(
                    icon_: Icons.add,
                    iconcolor: Colors.blue,
                    fun_: () {
                      print('add status');
                    },
                  )
                : avathar(
                    displayimg: avathars,
                    displaystatus: false,
                    disborder: true,
                    height_: 40,
                    width_: 40,
                  ),
          ),
          Positioned(
            bottom: 12,
            left: 9,
            child: Text(
              labeltxt,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
