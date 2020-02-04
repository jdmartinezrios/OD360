import 'package:flutter/material.dart';
import 'package:od360/components/bottonavbarComponent.dart';
import 'package:od360/components/topnavbarComponent.dart';

class PrincipalView extends StatefulWidget {
  @override
  _PrincipalViewState createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F7FF),
      // backgroundColor: Colors.black12,
      extendBody: true,
      body: Stack(
        children: <Widget>[
          TopNavbar(),
        ],
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
