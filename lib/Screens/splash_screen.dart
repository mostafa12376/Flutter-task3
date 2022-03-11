import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/Screens/RegisterScreen.dart';

import 'home.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screensState();
}



class _splash_screensState extends State<splash_screen> {

  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async{
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome to Your to do list.",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            )
      ),)
      // Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     fit: BoxFit.fill,
        //     // Background   Color
        //     // 5.jpg        Color.fromRGBO(255, 220, 14, 1.0)
        //     // 4.jpg        Colors.amberAccent
        //
        //     image: AssetImage("1.jpg"),
        //   ),
        // ),
      // ),
    );
  }


}
