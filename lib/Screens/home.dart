import 'package:flutter/material.dart';
import 'package:task3/Screens/levelsPage.dart';

class Home extends StatelessWidget {
  final String photo;

  const Home(this.photo);

  // const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
        body: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(photo),
              ),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ImageIcon(
                      AssetImage("sunny.png"),
                    color: Colors.amber,
                    size: 250,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>levelsPage()));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric( horizontal: 90),
                    child: Text(
                      'start',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )),
        ),

        Padding(
            padding: EdgeInsets.only(top: 80),
            child:
                  TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 221, 25, 0.4)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                side: BorderSide(color: Colors.amber, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ))),
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric( horizontal: 80),
                        child: Text(
                          'about',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ))
        )])));
  }
}
