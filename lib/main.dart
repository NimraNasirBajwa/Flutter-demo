import 'package:flutter/material.dart';
import 'package:flutter_vdotok_demo/OnBoarding2.dart';
import 'package:flutter_vdotok_demo/login_screen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_vdotok_demo/splash_screen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vdotok_connect/vdotok_connect.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fltr_Demo',
      theme: ThemeData(primarySwatch: Colors.yellow, fontFamily: 'Lato'),
      home: const SplashScreen(),
    );
  }
}

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
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
        padding: EdgeInsets.only(left: 150, top: 106, right: 10),
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
                "assets/undraw_medicine_b-1-ol.png",
                width: 355,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 100, top: 520),
        child: Column(
          children: [
            Expanded(
                child: Text(
              'Trusted Health partner',
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
        padding: EdgeInsets.only(left: 50, top: 550, right: 20),
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
              onPressed: () {Navigator.of(context).push(MaterialPageRoute( builder: (context) => OnBoarding()));},
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
