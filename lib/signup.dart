import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vdotok_demo/ProfileScreen.dart';
import 'package:flutter_vdotok_demo/already_haveaccount.dart';
import 'package:flutter_vdotok_demo/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // show the password or not
  bool _isObscure = true;
  bool? check1 = false, check2 = true, check3 = false;
  final _formKey = GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Container(
          decoration: BoxDecoration(),
          child: Scaffold(
            appBar: AppBar(backgroundColor: HexColor('#140243')),
            body: Center(
              child: Stack(children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 145, top: 75),
                  child: Image.asset('assets/Group 120(1).png'),
                ),
                Container(),
                Container(
                  padding: EdgeInsets.only(left: 175, top: 70),
                  child: Text(
                    'Sign Up',
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
                          child: Column(
                            children: [
                              TextFormField(
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                    RegExp(r"[a-zA-Z]+|\s_"),
                                  )
                                ],
                                // The validator receives the text that the user has entered.
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  } else if (value.length < 4) {
                                    return 'Too short';
                                  }
                                  return null;
                                },
                                style: TextStyle(color: HexColor('#140243')),
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintText: "Username*",
                                    hintStyle: TextStyle(
                                        fontSize: 16,
                                        color: HexColor('#677294'),
                                        fontWeight: FontWeight.w400),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                              const SizedBox(
                                height: 19,
                              ),
                              Container(
                                child: Column(
                                  children: [
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
                                          hintText: "Email*",
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
                                      height: 19,
                                    ),
                                    TextFormField(
                                      // The validator receives the text that the user has entered.
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
                                    CheckboxListTile(
                                      //checkbox positioned at left
                                      value: check3,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          check3 = value;
                                        });
                                      },

                                      title: Text(
                                        "I agree with the Terms of Service & Privacy Policy",
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            color: HexColor('#677294'),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                              builder: (context) {
                                                return const ProfileScreen();
                                              },
                                            ));
                                          }
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
                                          'Sign Up',
                                          style: TextStyle(
                                              fontFamily: 'Inter',
                                              color: HexColor('#F2E33A'),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    AlreadyHaveAnAccountCheck(
                                      press: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return LoginScreen();
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ))
              ]),
            ),
          ),
        ));
  }
}
