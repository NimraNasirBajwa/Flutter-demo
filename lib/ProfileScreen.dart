import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_vdotok_demo/chat.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();
  List<String> selected = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: HexColor('#140243')),
        body: Container(
            padding: const EdgeInsets.only(left: 5, top: 15, right: 5),
            child: ListView(children: <Widget>[
              Center(
                  child: Stack(children: [
                Container(
                  width: 130,
                  height: 130,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/Ellipse 212.png'))),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: InkWell(
                        child: Icon(
                          Icons.camera_alt,
                          color: HexColor('#140243'),
                          size: 30.0,
                        ),
                        onTap: () {
                          print('camera click');
                          showModalBottomSheet(
                              context: context,
                              builder: (context) => bottomSheet(context));
                        },
                      )),
                )
              ])),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                  child: Column(children: [
                    Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(children: [
                          const SizedBox(
                            height: 19,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 15, right: 15),
                              child: Column(children: [
                                TextField(
                                  keyboardType: TextInputType.visiblePassword,
                                  textInputAction: TextInputAction.done,
                                  showCursor: true,
                                  style: TextStyle(color: HexColor('#140243')),
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      hintText: "Full Name*",
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
                                    child: Column(children: [
                                  TextField(
                                    keyboardType: TextInputType.number,
                                    style:
                                        TextStyle(color: HexColor('#140243')),
                                    decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        hintText: "Phone*",
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
                                  TextField(
                                    keyboardType: TextInputType.visiblePassword,
                                    textInputAction: TextInputAction.done,
                                    showCursor: true,
                                    style: TextStyle(),
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        hintText: "Address*",
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
                                  Container(
                                      child: Column(children: [
                                    TextField(
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      textInputAction: TextInputAction.done,
                                      showCursor: true,
                                      style:
                                          TextStyle(color: HexColor('#140243')),
                                      decoration: InputDecoration(
                                          fillColor: Colors.white,
                                          filled: true,
                                          hintText: "Speciality*",
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
                                    Container(
                                      child: Column(children: [
                                        TextField(
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                          textInputAction: TextInputAction.done,
                                          showCursor: true,
                                          style: TextStyle(
                                              color: HexColor('#140243')),
                                          decoration: InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                              hintText: "Years of Experience*",
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
                                        Container(
                                          child: Column(children: [
                                            TextField(
                                              keyboardType:
                                                  TextInputType.visiblePassword,
                                              textInputAction:
                                                  TextInputAction.done,
                                              showCursor: true,
                                              style: TextStyle(
                                                  color: HexColor('#140243')),
                                              decoration: InputDecoration(
                                                  fillColor: Colors.white,
                                                  filled: true,
                                                  hintText: "About Doctor",
                                                  hintStyle: TextStyle(
                                                      fontSize: 16,
                                                      color:
                                                          HexColor('#677294'),
                                                      fontWeight:
                                                          FontWeight.w400),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  )),
                                            ),
                                            const SizedBox(
                                              height: 19,
                                            ),
                                            ElevatedButton(
                                                onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => chatscreen()));
            },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      HexColor('#140243'),
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 155,
                                                      vertical: 20),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0)),
                                                ),
                                                child: Text(
                                                  'Save',
                                                  style: TextStyle(
                                                      fontFamily: 'Inter',
                                                      color:
                                                          HexColor('#F2E33A'),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                )),
                                            const SizedBox(
                                              height: 30,
                                            ),
                                          ]),
                                        ),
                                      ]),
                                    ),
                                  ]))
                                ]))
                              ]))
                        ]))
                  ]))
            ])));
  }

  Widget bottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.1,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(children: [
        const Text(
          'choose profile photo',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.image),
                  Text(
                    'Gallery',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              onTap: () {
                print('Gallery');
                takePhoto(ImageSource.gallery);
              },
            ),
            const SizedBox(
              width: 50,
            ),
            InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.camera),
                    Text(
                      'Camera',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                onTap: () {
                  print('camera');
                  takePhoto(ImageSource.camera);
                })
          ],
        )
      ]),
    );
  }

  Future<void> takePhoto(ImageSource source) async {
    final pickedImage =
        await imagePicker.pickImage(source: source, imageQuality: 100);

    pickedFile = File(pickedImage!.path);
  }
}
