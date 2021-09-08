import 'dart:async';
import 'package:flutter/material.dart';

class MySplash extends StatefulWidget {
  const MySplash({Key? key}) : super(key: key);

  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushNamed(context, "myhome"),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Image.asset("assets/docker.jpg"),
        ),
      ),
    );
  }
}
