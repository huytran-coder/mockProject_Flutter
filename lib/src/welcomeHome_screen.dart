import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mock_project/src/apiHotel_screen.dart';

class WelcomehomeScreen extends StatefulWidget {
  const WelcomehomeScreen({super.key});

  @override
  State<WelcomehomeScreen> createState() => _WelcomehomeScreenState();
}

class _WelcomehomeScreenState extends State<WelcomehomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 180, left: 30),
            child: Text(
              "Welcome To Home",
              style: TextStyle(
                fontFamily: 'Mulish',
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Color(0xFF252525),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 80,
            ),
            child: Center(child: SvgPicture.asset("assets/ic_welcomeHome.svg")),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 22),
            child: Container(
              width: 310,
              height: 60,
              child: const Text(
                'Currently The Next Part of Home Activity & Fragementation is under development.'
                ' The upcoming Part 2 is coming Soon........',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    color: Color(0xFF252525)),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.zero,
          child: IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () {
              print('Icon button pressed');
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ApihotelScreen()  ),);
            },
            tooltip: 'Like',
            iconSize: 50.0,
            color: Colors.blue,
          ),
          ),
        ],
      ),
    );
  }
}
