import 'package:flutter/material.dart';
import 'package:task3/Classes/questions.dart';
import 'package:task3/Screens/levelsPage.dart';
import 'package:task3/Widgets/answerWidget.dart';


class questionPage extends StatefulWidget {
  final int num;
  final int quNum;
  questionPage(this.num, this.quNum);
  @override
  State<questionPage> createState() => _questionPageState();
}

class _questionPageState extends State<questionPage> {
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
    int x = 1, ansnum=1;
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("5.jpg"),
              ),
            ),
            child:
            Padding(
                padding: EdgeInsets.only(top: 25, left: 6),
                child:
            Column(
              children: [
                Row(
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
                          padding: EdgeInsets.only(left: 110, top: 8),
                        child: Text(
                          "Level "+ widget.num.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                  ),
                ]),
                Padding(
                  padding: EdgeInsets.only( top: 20),
                  child:
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "  "+ x.toString() +') '+questions.questionsList[(widget.num-1)*5+widget.quNum].q,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                )
                ),
                answerWidget(ansnum, "    "+ x.toString() +') '+questions.questionsList[(widget.num-1)*5+widget.quNum].choise1,),
                answerWidget(ansnum, "    "+ x.toString() +') '+questions.questionsList[(widget.num-1)*5+widget.quNum].choise2,),
                answerWidget(ansnum, "    "+ x.toString() +') '+questions.questionsList[(widget.num-1)*5+widget.quNum].choise3,),

                Padding(
                  padding: EdgeInsets.only(top: 120),
                  child:
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [



                  Padding(
                      padding: EdgeInsets.only(top: 80, right: 120),
                      child:
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 221, 25, 0.4)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.amber, width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                  ))),
                          onPressed: () {Navigator.pop(context);},
                          child: Padding(
                            padding: EdgeInsets.symmetric( horizontal: 20),
                            child: Text(
                              'Previous',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ))

                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 80),
                    child:
                    TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ))),
                        onPressed: () {
                          if(widget.quNum==4) {
                            Navigator.pop(context);
                            Navigator.pop(context);
                            Navigator.pop(context);
                            Navigator.pop(context);
                            Navigator.pop(context);
                          }
                          else {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>
                                    questionPage(
                                        widget.num, widget.quNum + 1)));
                          }
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric( horizontal: 35),
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )),
                  ),

                ])
                )],


        ))));
  }
}
