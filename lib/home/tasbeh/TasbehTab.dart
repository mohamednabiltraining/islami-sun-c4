import 'package:flutter/material.dart';
import 'package:islami_sun/main.dart';

class Seb7a extends StatefulWidget {
  @override
  _Seb7aState createState() => _Seb7aState();
}
class _Seb7aState extends State<Seb7a> {
  int _counter = 0;
  List<String> text=['سبحان الله','الحمد الله','الله اكبر'];
  int text_count=0;
  int rotateValue=0;
  void _incrementCounter() {
    setState(() {
      _counter++;
      rotateValue+=6;
    });
  }
  void TextState(){
      setState(() {
        if(_counter==5) {
          _counter = 0;
          if (text_count < text.length-1)
          text_count ++;
          else
            text_count=0;
        }
      });
  }
  @override
  Widget build(BuildContext context) {
    TextState();
    return Center(
      child: Column(
        children: [
          InkWell(
            onTap:  _incrementCounter,
            child:  Column(
              children: [
                Image.asset('assets/images/head_sebha_logo.png'),
                 Transform.rotate(
                  angle: rotateValue*((22/7)/180),
                  child: Image.asset('assets/images/body_of_seb7a.png'),
                ),
              ],
            ),
          ),
            Container(
              margin: EdgeInsets.all(5),
              child: Text(
                'عدد التسبيحات',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 18,left: 18,top: 26,bottom: 26),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(201, 179, 150, 1.0),
              ),
              child: Text(
                '$_counter',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color:MyThemeData.primaryColor,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15,right: 15),
                  child: Text('${text[text_count]}',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),),
                ),
              ),
            ),
        ],
      ),
    );
  }

}