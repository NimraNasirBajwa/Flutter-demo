import 'package:flutter/material.dart';
import 'package:flutter_vdotok_demo/OnBoarding3.dart';
import 'package:flutter_vdotok_demo/login_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({
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
        padding: EdgeInsets.only(left: 30, top: 0),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Image.asset(
                "assets/onboarding.gif",
                width: 355,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 145, top: 490),
        child: Column(
          children: [
            Expanded(
                child: Text(
              'Check Vitals',
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
        padding: EdgeInsets.only(left: 50, top: 530, right: 20),
        child: Column(
          children: [
            Expanded(
                child: Text(
              'Contrary to popular belief, Lorem Ipsum is not \nsimply random text. It has roots in a piece of it \n                    for over 2000 years old.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: HexColor('#140243'),
              ),
            )),
          ],
        ),
      ),
      Container(
          padding: EdgeInsets.only(left: 45, top: 650, right: 30),
          child: ElevatedButton(
              onPressed: () {Navigator.of(context).push(MaterialPageRoute( builder: (context) => BoardingScreen()));},
              style: ElevatedButton.styleFrom(
                backgroundColor: HexColor('#140243'),
                padding:
                    const EdgeInsets.symmetric(horizontal: 145, vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              child: Text(
                'Next',
                style: TextStyle(
                    fontFamily: 'Inter',
                    color: HexColor('#F2E33A'),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ))),
      Container(
          padding: EdgeInsets.only(left: 175, top: 720, right: 75),
          child: TextButton(
            onPressed: () {Navigator.of(context).push(MaterialPageRoute( builder: (context) => LoginScreen()));},
            child: Text('Skip',style: TextStyle(
                    fontFamily: 'Inter',
                    color: HexColor('#140243'),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),),
          ))
    ])));
  }
}
