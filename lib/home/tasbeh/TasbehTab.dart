import 'package:flutter/material.dart';
import 'package:islami_sun/main.dart';

class Seb7a extends StatefulWidget {
  @override
  _Seb7aState createState() => _Seb7aState();
}
class _Seb7aState extends State<Seb7a> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
              margin: EdgeInsets.all(8),
              child: MaterialButton(
                onPressed: _incrementCounter,
                child:  Container(
                  padding: EdgeInsets.all(5),
                  child: Text('سبحان الله',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),),
                ),
                color:MyThemeData.primaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}