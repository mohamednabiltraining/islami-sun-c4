import 'package:flutter/material.dart';
import 'package:islami_sun/home/HomeScreen.dart';
import 'package:islami_sun/home/quran/SuraDetailsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyThemeData {
  static const Color primaryColor = Color.fromARGB(255, 183, 147, 95);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedLabelStyle: TextStyle(color: Colors.black),
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(color: Colors.black),
            unselectedIconTheme: IconThemeData(color: Colors.white)),
        progressIndicatorTheme:
            ProgressIndicatorThemeData(color: MyThemeData.primaryColor),
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(
              color: Colors.blue,
              fontSize: 28,
            ),
            color: Colors.transparent,
            elevation: 5),
        primaryColor: MyThemeData.primaryColor,
      ),
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        SuraDetailsScreen.routeName: (buildContext) => SuraDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
