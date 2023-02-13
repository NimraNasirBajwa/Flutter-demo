import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function? press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Already have an Account ?" : "Don’t have an Account ?",
          style: TextStyle(color: HexColor('#140243')),
        ),
        GestureDetector(
          onTap: press as void Function()?,
          child: Text(
            login ? "Log In" : "Sign Up",
            style: TextStyle(
              color: HexColor('#140243'),
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}

