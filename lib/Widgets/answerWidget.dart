import 'package:flutter/material.dart';
import 'package:task3/Classes/questions.dart';

class answerWidget extends StatelessWidget {
  int num;
  late String txt;
  answerWidget(this.num, this.txt);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 80),
      child:Container(
        alignment: Alignment.centerLeft,
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(1, 1, 1, 0)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ))),
          onPressed: () {

          },
          child: Padding(
            padding: EdgeInsets.symmetric( horizontal: 10),
            child: Text(
              txt,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          )),
      )
    );
  }
}
