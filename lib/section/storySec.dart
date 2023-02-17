import 'package:facebook/asset.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class storySec extends StatelessWidget {
  const storySec({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          storyCard(
            labeltxt: 'Add Story',
            storyimg: cru,
            avathars: cru,
            storystatus: true,
          ),
          storyCard(
            labeltxt: 'Peetar',
            storyimg: doga,
            avathars: huskey,
            storystatus: false,
          ),
          storyCard(
            labeltxt: 'Shaji Paapan',
            storyimg: shaji,
            avathars: monkey,
            storystatus: false,
          ),
          storyCard(
            labeltxt: 'Charlie',
            storyimg: char,
            avathars: char,
            storystatus: false,
          ),
        ],
      ),
    );
  }
}
