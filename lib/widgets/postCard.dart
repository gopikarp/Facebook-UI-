import 'package:facebook/asset.dart';
import 'package:facebook/section/headerButtonSec.dart';
import 'package:facebook/widgets/avathar.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/roundappBarButton.dart';
import 'package:flutter/material.dart';

import 'headerButton.dart';

class postCard extends StatelessWidget {
  final String propick;
  final String profilename;
  final String publishtime;
  final String postTitle;
  final String postImage;
  final bool showbluetick;
  final String likeCount;
  final String shareCount;
  final String commentCount;
  final String postSmallImage;
  postCard({
    required this.propick,
    required this.profilename,
    required this.publishtime,
    required this.postTitle,
    required this.postImage,
    this.showbluetick = false,
    required this.likeCount,
    required this.shareCount,
    required this.commentCount,
    required this.postSmallImage,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        postcardHeader(),
        TitleSection(),
        imageSection(),
        footerSection(),
        Divider(
          thickness: 1,
        ),
        headerButtonSec(
          buttonOne: headerButton(
              icon_: Icons.thumb_up_alt_outlined,
              buttontext: 'Like',
              buttoncolor: Colors.grey),
          buttonTwo: headerButton(
              icon_: Icons.comment_outlined,
              buttontext: 'Comment',
              buttoncolor: Colors.grey),
          buttonThree: headerButton(
              icon_: Icons.share,
              buttontext: 'share',
              buttoncolor: Colors.grey),
          // icon_: Icons.abc,
        ),
        Divider(
          thickness: 6,
        ),
      ],
    );
  }

  footerSection() {
    return Container(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                ),
                height: 18,
                width: 18,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.thumb_up,
                  size: 13,
                  color: Colors.white,
                ),
              ),
              disText(label: likeCount),
            ],
          ),
          Container(
            child: Row(
              children: [
                disText(label: commentCount),
                SizedBox(
                  width: 1,
                ),
                disText(label: 'comments'),
                SizedBox(
                  width: 16,
                ),
                disText(label: shareCount),
                SizedBox(
                  width: 1,
                ),
                disText(label: 'shares'),
                avathar(
                  displayimg: postSmallImage,
                  displaystatus: false,
                  height_: 25,
                  width_: 25,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_drop_down),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  disText({required String label}) {
    return Text(
      label == null ? '' : label,
      style: TextStyle(
        color: Colors.grey[600],
      ),
    );
  }

  Container imageSection() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      height: 290,
      width: 390,
      child: Image.asset(
        postImage,
        fit: BoxFit.fill,
      ),
    );
  }

  TitleSection() {
    return postTitle != null && postTitle != ''
        ? Container(
            child: Title(
              color: Colors.black,
              child: Text(
                postTitle,
                style: TextStyle(fontSize: 15),
              ),
            ),
          )
        : SizedBox();
  }

  postcardHeader() {
    return ListTile(
      leading: avathar(
        displayimg: propick,
        displaystatus: false,
      ),
      title: Row(
        children: [
          Text(
            profilename,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            width: 9,
            height: 7,
          ),
          showbluetick ? blueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishtime == null ? "" : publishtime),
          SizedBox(
            width: 9,
            height: 7,
          ),
          Icon(
            Icons.public,
            size: 16,
          ),
        ],
      ),
    );
  }
}
