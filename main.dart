import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:kuberapp/screen/home/home.dart';
//import 'package:kuberapp/screen/splash.dart';
import 'package:kubernet/screen/home/home.dart';
import 'package:kubernet/screen/splash.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "mysplash",
      routes: {
        "myhome": (context) => MyHome(),
        "mysplash": (context) => MySplash(),
      },
    );
  }
}
