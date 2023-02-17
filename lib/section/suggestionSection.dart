import 'dart:ffi';

import 'package:facebook/asset.dart';
import 'package:facebook/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class suggestionSection extends StatelessWidget {
  const suggestionSection({super.key});

  // get addBt => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          ListTile(
            leading: Text(
              'People You May know',
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            trailing: Icon(Icons.more_horiz),
          ),
          Container(
            height: 340,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // suggestionCard(
                //     image_: muthu,
                //     name: "Prince (dog trainer)",
                //     mutual: "2 Mutual friends...",
                //     addBt: 'addBt',
                //     removeBt: removeBt),
                suggestionCard(
                  image_: dileep,
                  name: "Prince (dog trainer)",
                  mutual: "2 Mutual friends...",
                ),
                suggestionCard(
                  image_: shaj,
                  name: "aadinne pranayichavan(Paapan)",
                  mutual: "12 Mutual friends...",
                ),
                suggestionCard(
                  image_: hero,
                  name: "Roger Dearly",
                  mutual: "1 Mutual friend...",
                ),
                suggestionCard(
                  image_: cris,
                  name: "Cristopher Fernandez",
                  mutual: "292 Mutual friends...",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
