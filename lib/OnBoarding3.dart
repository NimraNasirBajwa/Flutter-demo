import 'package:flutter/material.dart';
import 'package:flutter_vdotok_demo/OnBoarding2.dart';
import 'package:flutter_vdotok_demo/ProfileScreen.dart';
import 'package:flutter_vdotok_demo/login_screen.dart';
import 'package:flutter_vdotok_demo/signup.dart';
import 'package:hexcolor/hexcolor.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Stack(children: <Widget>[
      Image.asset(
        "assets/Group 78.png",
        width: 170,
      ),
      Container(),
      Container(
        padding: EdgeInsets.only(left: 140, top: 120, right: 10),
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                "assets/Group 2(1).png",
                width: 113.62,
                height: 66.51,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 30, top: 5),
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Image.asset(
                "assets/Group 870.png",
                width: 355,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 115, top: 560),
        child: Column(
          children: [
            Expanded(
                child: Text(
              'Video Call With AI',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: HexColor('#140243')),
            )),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 50, top: 600, right: 20),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Expanded(
                    child: Text(
                  'Contrary to popular belief, Lorem Ipsum is not \nsimply random text. It has roots in a piece of it \n                    for over 2000 years old.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: HexColor('#140243'),
                  ),
                ))),
          ],
        ),
      ),
      Container(
          padding: EdgeInsets.only(left: 60, top: 680, right: 30),
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: HexColor('#140243'),
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                    fontFamily: 'Inter',
                    color: HexColor('#F2E33A'),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ))),
      Container(
          padding: EdgeInsets.only(left: 175, top: 750, right: 75),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child: Text(
              'Skip',
              style: TextStyle(
                  fontFamily: 'Inter',
                  color: HexColor('#140243'),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ))
    ])));
  }
}
