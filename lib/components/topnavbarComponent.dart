import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:od360/globals/globals.dart' as globals;

class TopNavbar extends StatefulWidget {
  @override
  _TopNavbarState createState() => _TopNavbarState();
}

class _TopNavbarState extends State<TopNavbar> with TickerProviderStateMixin {
  TabController _tabController;
  // ScrollController _listController;
  bool statusColor = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(initialIndex: 0, length: 6, vsync: this);
    globals.tabController = _tabController;
  }

  @override
  Widget build(BuildContext context) {
    double iphone11proWidth = MediaQuery.of(context).size.width;
    double iphone11proHeight = MediaQuery.of(context).size.height;
    double iphone11proXWidth = MediaQuery.of(context).size.width;
    double iphone11proXHeight = MediaQuery.of(context).size.height;
    return Positioned(
      top: 0.0,
      left: 0.0,
      right: 0.0,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            width: double.infinity,
            height: 66.0,
            // color: Colors.white,
            constraints: BoxConstraints(maxHeight: 66.0),
            margin: EdgeInsets.only(
                top: ((iphone11proWidth == 414 && iphone11proHeight == 896) ||
                        (iphone11proXWidth == 375 && iphone11proXHeight == 812))
                    ? 20.0
                    : 0.0),
            child: Stack(
              children: <Widget>[
                Material(
                  color: Colors.white.withOpacity(0.8),
                  child: TabBar(
                    isScrollable: true,
                    controller: globals.tabController,
                    indicator: UnderlineTabIndicator(
                      borderSide:
                          BorderSide(color: Color(0xFF0066BE), width: 3.0),
                      insets: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 50.0),
                    ),
                    labelPadding: EdgeInsets.only(
                        top: 20.0, bottom: 10.0, left: 20.0, right: 20.0),
                    tabs: [
                      Tab(
                        child: Text(
                          'For You',
                          style: TextStyle(
                            color: Color(0xFF0066BE),
                            fontFamily: 'Proxima Nova Regular',
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Leaderboards',
                          style: TextStyle(
                            color: Color(0xFF0066BE),
                            fontFamily: 'Proxima Nova Regular',
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'The Digest',
                          style: TextStyle(
                            color: Color(0xFF0066BE),
                            fontFamily: 'Proxima Nova Regular',
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'In the loop',
                          style: TextStyle(
                            color: Color(0xFF0066BE),
                            fontFamily: 'Proxima Nova Regular',
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Reports',
                          style: TextStyle(
                            color: Color(0xFF0066BE),
                            fontFamily: 'Proxima Nova Regular',
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Resources',
                          style: TextStyle(
                            color: Color(0xFF0066BE),
                            fontFamily: 'Proxima Nova Regular',
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
