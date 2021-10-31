import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_sun/home/HomeScreen.dart';
import 'package:islami_sun/home/hadeth/HadethDetailsScreen.dart';
import 'package:islami_sun/home/quran/SuraDetailsScreen.dart';
import 'package:islami_sun/providers/AppConfig.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: const MyApp()));
}

class MyThemeData {
  static const Color primaryColor = Color.fromARGB(255, 183, 147, 95);
  static const Color DarkprimaryColor = Color.fromARGB(255, 20, 26, 46);
  static const Color darkAccentColor = Color.fromARGB(255, 250, 204, 29);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedLabelStyle: TextStyle(color: Colors.black),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.black),
        unselectedIconTheme: IconThemeData(color: Colors.white)),
    progressIndicatorTheme:
        ProgressIndicatorThemeData(color: MyThemeData.primaryColor),
    appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
        color: Colors.transparent,
        elevation: 0),
    primaryColor: MyThemeData.primaryColor,
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedLabelStyle: TextStyle(color: Colors.black),
        selectedItemColor: darkAccentColor,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: darkAccentColor),
        unselectedIconTheme: IconThemeData(color: Colors.white)),
    progressIndicatorTheme:
        ProgressIndicatorThemeData(color: MyThemeData.primaryColor),
    appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
        color: Colors.transparent,
        elevation: 0),
    primaryColor: MyThemeData.DarkprimaryColor,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppConfigProvider provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      locale: Locale(provider.appLanguage),
      title: 'islami',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        SuraDetailsScreen.routeName: (buildContext) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (buildContext) => HadethDetailsScreen()
      },
      initialRoute: HomeScreen.routeName,
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
