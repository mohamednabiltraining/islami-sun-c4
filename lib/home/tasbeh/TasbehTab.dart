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
  void _incrementCounter() {
    setState(() {
      _counter++;
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
          Image.asset('assets/images/head_sebha_logo.png'),
          MaterialButton(onPressed: _incrementCounter,
          child: Image.asset('assets/images/body_of_seb7a.png'),
          ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: Text(
                    'عدد التسبيحات',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 18,left: 18,top: 26,bottom: 26),
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyThemeData.primaryColor,
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
                    decoration: BoxDecoration(
                      color:MyThemeData.primaryColor,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(5),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15,right: 15),
                      child: Text('${text[text_count]}',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),),
                    ),
                  ),
                )
              ],
            ),
        ],
      ),
    );
  }

}