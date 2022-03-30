import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'flow1/Flow1_Screen.dart';

const page = PageTransitionsTheme(builders: {
  TargetPlatform.android: CupertinoPageTransitionsBuilder(),
  TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  TargetPlatform.windows: CupertinoPageTransitionsBuilder(),
  TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
  TargetPlatform.linux: CupertinoPageTransitionsBuilder(),
});
late double deviceHeight;
late double deviceWidth;
void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(252, 248, 248, 1),
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Ordo',
      theme: ThemeData(
          primaryColor: Color.fromRGBO(60, 125, 217, 1),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color.fromRGBO(71, 98, 63, 1),
          ),
          scaffoldBackgroundColor: const Color.fromRGBO(252, 248, 248, 1),
          inputDecorationTheme: const InputDecorationTheme(
            contentPadding: EdgeInsets.zero,
            prefixIconColor: Color.fromRGBO(71, 98, 63, 1),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
          pageTransitionsTheme: page,
          fontFamily: 'Poppins',
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: const TextTheme(
              headline1: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: Color.fromRGBO(60, 125, 217, 1),
                fontSize: 14,
              ),
              headline2: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(60, 125, 217, 1),
                  fontWeight: FontWeight.bold),
              headline3: TextStyle(
                  fontSize: 11,
                  color: Color.fromARGB(255, 74, 78, 83),
                  fontWeight: FontWeight.w500))),
      home: const Flow1Screen(),
    );
  }
}
