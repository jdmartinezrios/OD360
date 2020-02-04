import 'package:flutter/material.dart';
import 'dart:ui';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double iphone11proWidth = MediaQuery.of(context).size.width;
    double iphone11proHeight = MediaQuery.of(context).size.height;
    double iphone11proXWidth = MediaQuery.of(context).size.width;
    double iphone11proXHeight = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: 75.0,
      constraints: BoxConstraints(maxHeight: 75.0),
      margin: EdgeInsets.only(
          bottom: ((iphone11proWidth == 414 && iphone11proHeight == 896) ||
                  (iphone11proXWidth == 375 && iphone11proXHeight == 812))
              ? 20.0
              : 0.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/imgs/icn_home@3x.png',
                height: 21.0,
                width: 22.9,
              ),
              SizedBox(height: 10.0),
              Text(
                'For You',
                style: TextStyle(
                  color: Color(0xFF0066BE),
                  fontFamily: 'Proxima Nova Regular',
                  fontSize: 16.0,
                ),
              ),
            ],
          )),
          GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/imgs/icn_search_blue@3x.png',
                  height: 21.0,
                  width: 22.9,
                ),
                SizedBox(height: 10.0),
                Text(
                  'Search',
                  style: TextStyle(
                    color: Color(0xFF0066BE),
                    fontFamily: 'Proxima Nova Regular',
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            child:
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: <Widget>[
                // Image.asset(
                //   'assets/imgs/icn_home@3x.png',
                //   height: 21.0,
                //   width: 22.9,
                // ),
                Container(
              height: 75.0,
              // width: MediaQuery.of(context).size.width * 0.33,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned(
                    top: 8.0,
                    child: Container(
                      height: 28.0,
                      width: 28.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/imgs/workana2.jpg')),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 2.0,
                    top: 2.0,
                    child: Container(
                      alignment: Alignment.center,
                      height: 16.0,
                      width: 16.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF0066BE),
                      ),
                      child: Text(
                        '8',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Proxima Nova Regular',
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.0),
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        color: Color(0xFF0066BE),
                        fontFamily: 'Proxima Nova Regular',
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),

              //   ],
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
