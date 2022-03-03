import 'package:flutter/material.dart';

import 'Screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Background   Color
      // 5.jpg        Color.fromRGBO(255, 221, 25, 0.6))
      // 4.jpg        Color.fromRGBO(200, 200, 0, 0.6)
      home: Home("5.jpg"),
    );
  }
}

