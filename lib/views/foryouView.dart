import 'package:flutter/material.dart';

class ForYouView extends StatefulWidget {
  @override
  _ForYouViewState createState() => _ForYouViewState();
}

class _ForYouViewState extends State<ForYouView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 250,
            margin: EdgeInsets.only(top: 66.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFF0B004B),
                  Color(0xFF0066BE),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Good Morning Juan',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Proxima Nova Bold',
                    fontSize: 24.0,
                  ),
                ),
                Text(
                  'Here’s your update',
                  style: TextStyle(
                    color: Color(0xFF6DACF5),
                    fontFamily: 'Proxima Nova Regular',
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40.0, left: 30.0),
            child: Text(
              'Leaderboards',
              style: TextStyle(
                color: Color(0xFF0066BE),
                fontFamily: 'Proxima Nova Regular',
                fontSize: 18.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF000000),
                  blurRadius: 10.0, // has the effect of softening the shadow
                  spreadRadius: -10.0, // has the effect of extending the shadow
                  offset: Offset(
                    0.0, // horizontal, move right 0
                    0.0, // vertical, move down 0
                  ),
                )
              ],
            ),
            child: Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 91,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFF0B004B),
                              Color(0xFF0066BE),
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Attainment Report',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Proxima Nova Regular',
                                fontSize: 26.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'UPDATED 02/05/2020',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Proxima Nova Regular',
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F7FF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            left: 24.0, top: 25.0, right: 17.0, bottom: 12.0),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Q1 Circle of Excellence',
                                  style: TextStyle(
                                    color: Color(0xFF0066BE),
                                    fontFamily: 'Proxima Nova Bold',
                                    fontSize: 14.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  'Based on COE Ranking Rep.',
                                  style: TextStyle(
                                    color: Color(0xFF0066BE),
                                    fontFamily: 'Proxima Nova Regular',
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 100.0,
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 5.0,
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Text(
                                        '#',
                                        style: TextStyle(
                                          color: Color(0xFF0066BE),
                                          fontFamily: 'Proxima Nova Regular',
                                          fontSize: 24.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: EdgeInsets.only(left: 50),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/icns/icn_arrowUp_blue@3x.png'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        indent: 24.0,
                        endIndent: 24.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 24.0, top: 12.0, right: 17.0, bottom: 25.0),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'YTD Circle of Excellence',
                                  style: TextStyle(
                                    color: Color(0xFF0066BE),
                                    fontFamily: 'Proxima Nova Bold',
                                    fontSize: 14.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  'Based on Attainment Report',
                                  style: TextStyle(
                                    color: Color(0xFF0066BE),
                                    fontFamily: 'Proxima Nova Regular',
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 100.0,
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 5.0,
                                    child: Container(
                                      height: 50.0,
                                      width: 50.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xFF10F4F4),
                                            Color(0xFF0066BE),
                                          ],
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: GestureDetector(
                                          onTap: () {
                                            print('object');
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              // image: DecorationImage(
                                              //   image: AssetImage(
                                              //       'assets/imgs/workana2.jpg'),
                                              //   fit: BoxFit.contain,
                                              // ),
                                              color: Color(0xFF0066BE),
                                              shape: BoxShape.circle,
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              '#',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily:
                                                    'Proxima Nova Regular',
                                                fontSize: 24.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: EdgeInsets.only(left: 50),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/icns/icn_arrowUp_blue@3x.png'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 44.0,
                        child: TabBar(
                          controller: _tabController,
                          indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                                color: Color(0xFF0066BE), width: 3.0),
                            insets: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 40.0),
                          ),
                          tabs: [
                            Tab(
                              child: Text(
                                '#MM/DD',
                                style: TextStyle(
                                  color: Color(0xFF0066BE),
                                  fontFamily: 'Proxima Nova Regular',
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                '#MM/DD',
                                style: TextStyle(
                                  color: Color(0xFF0066BE),
                                  fontFamily: 'Proxima Nova Regular',
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                '#MM/DD',
                                style: TextStyle(
                                  color: Color(0xFF0066BE),
                                  fontFamily: 'Proxima Nova Regular',
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12.61),
                      _buildTabs(),
                      // Stack(
                      //   children: <Widget>[
                      //     TabBarView(
                      //       controller: _tabController,
                      //       children: [
                      //         _buildTabs(),
                      //         _buildTabs(),
                      //         _buildTabs(),
                      //       ],
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40.0, left: 30.0, bottom: 150.0),
            child: Text(
              'The Digest',
              style: TextStyle(
                color: Color(0xFF0066BE),
                fontFamily: 'Proxima Nova Regular',
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabs() {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 26.0),
            child: Text(
              'Current Rank',
              style: TextStyle(
                color: Color(0xFF0066BE),
                fontFamily: 'Proxima Nova Regular',
                fontSize: 12.0,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 54.0,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '#  {brandName}',
                      style: TextStyle(
                        color: Color(0xFF0066BE),
                        fontFamily: 'Proxima Nova Regular',
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      '{score}',
                      style: TextStyle(
                        color: Color(0xFF0066BE),
                        fontFamily: 'Proxima Nova Regular',
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                height: 54.0,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '#  {brandName}',
                      style: TextStyle(
                        color: Color(0xFF0066BE),
                        fontFamily: 'Proxima Nova Regular',
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      '{score}',
                      style: TextStyle(
                        color: Color(0xFF0066BE),
                        fontFamily: 'Proxima Nova Regular',
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                height: 54.0,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '#  {brandName}',
                      style: TextStyle(
                        color: Color(0xFF0066BE),
                        fontFamily: 'Proxima Nova Regular',
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      '{score}',
                      style: TextStyle(
                        color: Color(0xFF0066BE),
                        fontFamily: 'Proxima Nova Regular',
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
            ],
          ),
        ],
      ),
    );
  }
}
