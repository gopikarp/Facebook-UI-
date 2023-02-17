import 'package:flutter/material.dart';

class avathar extends StatelessWidget {
  // const avathar({super.key});
  final String displayimg;
  final bool displaystatus;
  final bool disborder;

  final double height_;
  final double width_;
  avathar({
    required this.displayimg,
    required this.displaystatus,
    this.disborder = false,
    this.height_ = 55,
    this.width_ = 50,
  });
  @override
  Widget build(BuildContext context) {
    // Widget statusindicator;
    // if (displaystatus == true) {
    //   statusindicator = Positioned(
    //     bottom: 1,
    //     right: 8,
    //     child: Container(
    //       width: 10,
    //       height: 10,
    //       decoration: BoxDecoration(
    //         color: Colors.green,
    //         shape: BoxShape.circle,
    //         border: Border.all(
    //           color: Colors.white,
    //         ),
    //       ),
    //     ),
    //   );
    // } else {
    //   statusindicator = SizedBox();
    // }
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: disborder
                ? Border.all(
                    width: 2,
                    color: Colors.blueAccent,
                  )
                : Border(),
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.only(right: 6, left: 6),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayimg,
              fit: BoxFit.cover,
              height: height_,
              width: width_,
            ),
          ),
        ),
        // statusindicator,
        displaystatus == true
            ? Positioned(
                bottom: 1,
                right: 8,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            : SizedBox()
      ],
    );
  }
}
