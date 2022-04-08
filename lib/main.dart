import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'flow1/flow1_screen.dart';

const page = PageTransitionsTheme(builders: {
  TargetPlatform.android: CupertinoPageTransitionsBuilder(),
  TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  TargetPlatform.windows: CupertinoPageTransitionsBuilder(),
  TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
  TargetPlatform.linux: CupertinoPageTransitionsBuilder(),
});
late final double deviceHeight;
late final double deviceWidth;
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
          primaryColor: const Color.fromRGBO(60, 125, 217, 1),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color.fromRGBO(71, 98, 63, 1),
          ),
          scaffoldBackgroundColor: const Color.fromRGBO(252, 248, 248, 1),
          inputDecorationTheme: const InputDecorationTheme(
            contentPadding: EdgeInsets.only(bottom: 3.5),
            prefixIconColor: Color.fromRGBO(71, 98, 63, 1),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
          pageTransitionsTheme: page,
          fontFamily: 'Poppins',
          iconTheme: const IconThemeData(size: 24, color: Colors.white),
          textTheme: const TextTheme(
              headline4: TextStyle(
                height: 3,
                color: Color.fromRGBO(71, 98, 63, 1),
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
              headline1: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: Color.fromRGBO(60, 125, 217, 1),
                fontSize: 11.2,
              ),
              headline2: TextStyle(
                  fontSize: 11.2,
                  color: Color.fromRGBO(60, 125, 217, 1),
                  fontWeight: FontWeight.bold),
              headline3: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ))),
      home: const Flow1Screen(),
    );
  }
}
