import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vdotok_demo/main.dart';
import 'package:flutter_vdotok_demo/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Image.asset('assets/splashv.gif'),
      ),
      nextScreen: const WelcomeImage(),
      splashIconSize: 300,
      duration: 500,
      splashTransition: SplashTransition.fadeTransition,
      animationDuration: const Duration(seconds: 2),
    );
    
  }
}
