import 'package:flutter/material.dart';
import 'package:task3/Screens/questionPage.dart';

class level_icons extends StatelessWidget {
  int num;
  level_icons(this.num);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
            padding: EdgeInsets.all(20),
            child: IconButton(
              iconSize: 150,
              icon: ImageIcon(
                AssetImage("star2.png"),
                color: Color.fromRGBO(255, 191, 0, 0.5019607843137255),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => questionPage(num, 0)));
              },
            )),
        Text(
          'level $num',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
        // Navigator.pop(context);
      ],
    );
  }
}
