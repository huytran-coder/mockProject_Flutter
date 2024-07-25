import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'slide_screen.dart';

class WelcomeScreen extends StatefulWidget {
@override
_WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();

    // Thực hiện delay 2 giây trước khi chuyển trang
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SlideScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF3951),
      body: Center(
        child: Container(
               child:Center(child: SvgPicture.asset("assets/ic_welcome.svg"),
               ),
       ),
       ),

    );
  }
}

