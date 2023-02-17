// import 'package:facebook/widgets/appBarButton.dart';
import 'package:facebook/asset.dart';
import 'package:facebook/section/headerButtonSec.dart';
import 'package:facebook/section/roomSec.dart';
import 'package:facebook/section/statusSec.dart';
import 'package:facebook/section/storySec.dart';
import 'package:facebook/section/suggestionSection.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postCard.dart';
// import 'package:facebook/section/widgets/appBarButton.dart';
import 'package:facebook/widgets/roundappBarButton.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget space = SizedBox(
      height: 10,
    );
    Widget div_ = Divider(
      thickness: 6,
      color: Color.fromARGB(139, 216, 216, 216),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 33),
          ),
          actions: [
            // appBarButton(),

            roundappBarButton(icon_: Icons.search, fun_: () {}),
            roundappBarButton(icon_: Icons.message, fun_: () {}),
          ],
        ),
        body: ListView(
          children: [
            space,
            statuSec(),
            // div_,
            Divider(
              thickness: 2,
              color: Color.fromRGBO(216, 216, 216, 0.545),
            ),
            headerButtonSec(
              buttonOne: headerButton(
                  icon_: Icons.video_call,
                  buttontext: 'Live',
                  buttoncolor: Colors.red),
              buttonTwo: headerButton(
                  icon_: Icons.image,
                  buttontext: 'Photos',
                  buttoncolor: Colors.green),
              buttonThree: headerButton(
                  icon_: Icons.video_call,
                  buttontext: 'Room',
                  buttoncolor: Color.fromARGB(255, 192, 45, 250)),
            ),
            div_,
            roomSec(),
            div_,
            storySec(),
            //Cruella devil
            div_,
            postCard(
              propick: cru,
              profilename: 'Cruella devil',
              publishtime: '5hr',
              postImage: cru0,
              postTitle: 'My 101 Dalmations',
              showbluetick: true,
              commentCount: '10K ',
              likeCount: '100K',
              shareCount: '1k',
              postSmallImage: dog,
            ),

            //DUDE

            postCard(
              propick: dude,
              profilename: 'DUDE',
              publishtime: '1hr',
              postImage: dude,
              postTitle:
                  ' not sulaiman ! \n Damodaran Unni makan Delmen Edakochi',
              showbluetick: true,
              commentCount: '10K ',
              likeCount: '100K',
              shareCount: '1k',
              postSmallImage: shaji,
            ),

            //muthu

            postCard(
              propick: muthu,
              profilename: 'Dr.Muthu',
              publishtime: '1hr',
              postImage: muthu,
              postTitle: '',
              showbluetick: true,
              commentCount: '10K ',
              likeCount: '100K',
              shareCount: '1k',
              postSmallImage: shaji,
            ),

            suggestionSection(),
            div_,
            postCard(
              propick: vil,
              profilename: 'vijayan & dasan',
              publishtime: '1min ago',
              postImage: vil,
              postTitle: ' We are professional thiefs ',
              showbluetick: false,
              commentCount: '5',
              likeCount: '10',
              shareCount: '1',
              postSmallImage: dogb,
            ),

            //toby
            postCard(
              propick: toby,
              profilename: 'Karthika Karthu',
              publishtime: '1hr',
              postImage: huskey,
              postTitle: ' ',
              showbluetick: true,
              commentCount: '10K ',
              likeCount: '100K',
              shareCount: '1k',
              postSmallImage: shaji,
            ),
          ],
        ),
      ),
    );
  }
}
