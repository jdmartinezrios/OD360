import 'dart:ui';

import 'package:flutter/material.dart';

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
    // _listController = new ScrollController();
    _tabController.addListener(
      () {
        if (_tabController.indexIsChanging) {
          setState(() {
            statusColor = true;
          });
        } else {
          setState(() {
            statusColor = false;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double iphone11proWidth = MediaQuery.of(context).size.width;
    double iphone11proHeight = MediaQuery.of(context).size.height;
    double iphone11proXWidth = MediaQuery.of(context).size.width;
    double iphone11proXHeight = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: 66.0,
      constraints: BoxConstraints(maxHeight: 66.0),
      margin: EdgeInsets.only(
          top: ((iphone11proWidth == 414 && iphone11proHeight == 896) ||
                  (iphone11proXWidth == 375 && iphone11proXHeight == 812))
              ? 20.0
              : 0.0),
      child: Stack(
        children: <Widget>[
          SizedBox(
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
          )),
          // ListView(
          //   scrollDirection: Axis.horizontal,
          //   controller: _listController,
          // children: <Widget>[
          // Container(
          //   alignment: Alignment.center,
          //   padding: EdgeInsets.only(left: 20, right: 20, top: 1.0),
          //   child: Image.asset(
          //     'assets/imgs/icn_navBar_logo@3x.png',
          //     height: 32.12,
          //     width: 79.39,
          //   ),
          // ),
          Material(
            color: Colors.white.withOpacity(0.15),
            child: TabBar(
              isScrollable: true,
              controller: _tabController,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Color(0xFF0066BE), width: 3.0),
                insets: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 50.0),
              ),
              labelPadding: EdgeInsets.only(
                  top: 20.0, bottom: 10.0, left: 20.0, right: 20.0),
              tabs: [
                // Tab(
                //   child: Container(
                //     alignment: Alignment.center,
                //     padding: EdgeInsets.only(left: 20, right: 20, top: 1.0),
                //     child: Image.asset(
                //       'assets/imgs/icn_navBar_logo@3x.png',
                //       height: 32.12,
                //       width: 79.39,
                //     ),
                //   ),
                // ),
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
            //   ],
            // ),
          ),
        ],
      ),
    );
  }
}
