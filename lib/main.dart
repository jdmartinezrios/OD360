import 'package:flutter/material.dart';
import 'package:od360/views/loginView.dart';
import 'package:flutter/services.dart';
import 'dart:io' show Platform;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // if (Platform.isAndroid) {
    //   SystemChrome.setEnabledSystemUIOverlays([]);
    // }
    return MaterialApp(
      title: 'OD360',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        extendBody: true,
        body: LoginView(),
      ),
    );
  }
}
