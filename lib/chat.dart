import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vdotok_connect/vdotok_connect.dart';

class chatscreen extends StatefulWidget {
  const chatscreen({super.key});

  @override
  State<chatscreen> createState() => _chatscreenState();

}

class _chatscreenState extends State<chatscreen> {
  Emitter emitter = Emitter.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: HexColor('#140243')),
      
    );
  }
}
