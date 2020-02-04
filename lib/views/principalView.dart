import 'package:flutter/material.dart';
import 'package:od360/components/bottonavbarComponent.dart';
import 'package:od360/components/topnavbarComponent.dart';
import 'package:od360/views/foryouView.dart';
import 'package:od360/globals/globals.dart' as globals;

class PrincipalView extends StatefulWidget {
  @override
  _PrincipalViewState createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView>
    with TickerProviderStateMixin {
  List<Widget> content = [
    ForYouView(),
    ForYouView(),
    ForYouView(),
    ForYouView(),
    ForYouView(),
    ForYouView()
  ];
  bool inistTabView;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    inistTabView = false;
    Future.delayed(Duration(milliseconds: 1), () {
      setState(() {
        inistTabView = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F7FF),
      // backgroundColor: Colors.black12,
      extendBody: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            (inistTabView)
                ? Container(
                    child: TabBarView(
                        controller: globals.tabController, children: content),
                  )
                : Container(),
            TopNavbar(),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavbar(),
    );
  }
}
