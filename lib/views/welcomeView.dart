import 'package:flutter/material.dart';

class WelcomeView extends StatefulWidget {
  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView>
    with TickerProviderStateMixin {
  Animation<double> _progress, _tower, _redard;
  AnimationController _controllerProgress, _controllerTower, _controllerRegard;
  double sizeScren;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controllerProgress = AnimationController(
        duration: Duration(milliseconds: 4000), vsync: this);
    _controllerTower = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);
    _controllerRegard = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);
    _progress = CurvedAnimation(
      parent: _controllerProgress,
      curve: Curves.decelerate,
    );
    _tower = CurvedAnimation(
      parent: _controllerTower,
      curve: Curves.decelerate,
    );
    _redard = Tween<double>(begin: 550, end: 500).animate(CurvedAnimation(
      parent: _controllerTower,
      curve: Curves.decelerate,
    ));
    _controllerProgress.forward();
    _controllerTower.forward();
    _controllerRegard.forward();
    _controllerProgress.addListener(() {
      setState(() {});
    });
    _controllerTower.addListener(() {
      setState(() {});
    });
    _controllerRegard.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    sizeScren = MediaQuery.of(context).size.width.toDouble();

    return Container(
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.height
          : 768.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF0066BE),
            Color(0xFF0B004B),
          ],
        ),
      ),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(0.0, -1.2),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 150.0),
                    child: Opacity(
                      opacity: _tower.value * 1.0,
                      child: Image.asset(
                        'assets/imgs/img_towerLogo@3x.png',
                        height: _tower.value * 167.9,
                        width: _tower.value * 300,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 134.0,
                    width: 134.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF0066BE),
                            Color(0xFF10F4F4),
                          ]),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          print('object');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/imgs/workana2.jpg'),
                              fit: BoxFit.contain,
                            ),
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 200.0),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Juan Martinez',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontFamily: 'Proxima Nova Regular',
                      fontSize: 24.0,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 260.0),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'FalconTeam',
                    style: TextStyle(
                      color: Color(0xFF6DACF5),
                      fontFamily: 'Proxima Nova Regular',
                      fontSize: 14.0,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: _redard.value),
                  width: MediaQuery.of(context).size.width,
                  child: Opacity(
                    opacity: _tower.value * 1.0,
                    child: Text(
                      'Good Morning',
                      style: TextStyle(
                        color: Color(0xFF6DACF5),
                        fontFamily: 'Proxima Nova Regular',
                        fontSize: 24.0,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 550.0, left: 40.0, right: 80.0),
            height: 5.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFF0B004B).withOpacity(0.5),
            ),
          ),
          Positioned(
            right: 40,
            child: Container(
              margin: EdgeInsets.only(top: 543.0),
              child: Text(
                '${(_progress.value * 100).toStringAsFixed(0)} %',
                style: TextStyle(
                  color: Color(0xFF6DACF5),
                  fontFamily: 'Proxima Nova Regular',
                  fontSize: 14.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0.0,
            width: _progress.value * sizeScren,
            child: Container(
              margin: EdgeInsets.only(top: 550.0, right: 80.0, left: 40.0),
              width: _progress.value * sizeScren,
              height: 5.0,
              color: Color(0xFF6DACF5),
            ),
          ),
        ],
      ),
    );
  }
}
