import 'package:flutter/material.dart';
import 'package:task4/Screens/splash_screen.dart';

import 'Screens/RegisterScreen.dart';



void main()
{
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: splash_screen()

    );
  }
}
