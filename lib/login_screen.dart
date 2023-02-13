import 'package:flutter/material.dart';
import 'package:flutter_vdotok_demo/already_haveaccount.dart';
import 'package:flutter_vdotok_demo/main.dart';
import 'package:flutter_vdotok_demo/signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // show the password or not
  bool _isObscure = true;
  bool? check1 = false, check2 = true, check3 = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(),
        child: Form(
          key: _formKey,
          child: Scaffold(
            appBar: AppBar(backgroundColor: HexColor('#140243')),
            body: Center(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 145, top: 75),
                    child: Image.asset('assets/Group 120(1).png'),
                  ),
                  Container(),
                  Container(
                    padding: EdgeInsets.only(left: 175, top: 70),
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.lato(
                          color: HexColor('#140243'),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.2),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 30, right: 30),
                                child: Column(children: [
                                  TextFormField(
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          !value.contains('@') ||
                                          !value.contains('.')) {
                                        return 'Invalid Email';
                                      }
                                      return null;
                                    },
                                    style:
                                        TextStyle(color: HexColor('#140243')),
                                    decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        hintText: "Email or username**",
                                        hintStyle: TextStyle(
                                            fontSize: 16,
                                            color: HexColor('#677294'),
                                            fontWeight: FontWeight.w400),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      } else if (value.length < 6) {
                                        return "Password should be atleast 6 characters";
                                      } else if (value.length > 15) {
                                        return "Password should not be greater than 15 characters";
                                      }
                                      return null;
                                    },
                                    obscureText: _isObscure,
                                    style: TextStyle(),
                                    decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        hintText: "Password*",
                                        hintStyle: TextStyle(
                                            fontSize: 16,
                                            color: HexColor('#677294'),
                                            fontWeight: FontWeight.w400),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        suffixIcon: IconButton(
                                            icon: Icon(_isObscure == false
                                                ? Icons.visibility
                                                : Icons.visibility_off),
                                            onPressed: () {
                                              setState(() {
                                                _isObscure = !_isObscure;
                                              });
                                            })),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) ;
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: HexColor('#140243'),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 150, vertical: 20),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                      ),
                                      child: Text(
                                        'Sign In',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            color: HexColor('#F2E33A'),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      )),
                                ])),
                            const SizedBox(
                              height: 10,
                            ),
                            AlreadyHaveAnAccountCheck(
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return SignUpScreen();
                                    },
                                  ),
                                );
                              },
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
