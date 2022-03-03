import 'package:flutter/material.dart';

import '../Widgets/level_icon.dart';



class levelsPage extends StatefulWidget {
  @override
  State<levelsPage> createState() => _levelsPageState();
}

class _levelsPageState extends State<levelsPage> {

  // late TextEditingController nameCtrlr;



  @override
  void dispose() {
    print('hello from dispose');
    // nameCtrlr.dispose();
    // print(widget.x);
    super.dispose();
  }

  @override
  void initState() {

    super.initState();
    print('hello from init');
    // nameCtrlr = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    int x = 0 ;
    return Scaffold(

         body: Container(
           alignment: Alignment.center,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   fit: BoxFit.fill,
                   image: AssetImage("5.jpg"),
                 ),
               ),
               child: ListView.builder(
      itemCount: 20,
      itemBuilder: (context, i) {
        if(x==0) {
          x=1;
          return Padding(
                padding: EdgeInsets.only(top: 20, left: 6),
                child:Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  // IconButton(iconSize: 30, icon: Icon(Icons.arrow_back, color: Colors.white), onPressed: () {  }, ),
                  child: IconButton(iconSize: 25,
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {Navigator.pop(context);},),
                ),
                Expanded(

                  flex: 7,
                  // IconButton(iconSize: 30, icon: Icon(Icons.arrow_back, color: Colors.white), onPressed: () {  }, ),
                  child:
                  Padding(
                      padding: EdgeInsets.only(left: 110, top: 5),
                      child:
                      Text(
                        "Levels",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ),
              ]));

        }
        else return Row( children: [
            Expanded(child: level_icons(x++)),
            Expanded(child: level_icons(x++))
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        );
      }
         ))
    );
  }
}


