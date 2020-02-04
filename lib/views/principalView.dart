import 'package:flutter/material.dart';
import 'package:od360/components/topnavbarComponent.dart';

class PrincipalView extends StatefulWidget {
  @override
  _PrincipalViewState createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: Color(0xFFF2F7FF),
        extendBody: true,
        body: Stack(
          children: <Widget>[
            TopNavbar(),
          ],
        ),
      ),
    );
  }
}
