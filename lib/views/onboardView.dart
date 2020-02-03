import 'package:flutter/material.dart';
import 'package:od360/components/onboarding/intro_slider.dart';
import 'package:od360/components/onboarding/slide_object.dart';

class OnBoardView extends StatefulWidget {
  @override
  _OnBoardViewState createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  List<Slide> slides = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _buildAllSlides();
  }

  void _buildAllSlides() {
    slides.add(
      new Slide(
        widgetDescription: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome to OD360',
              style: TextStyle(
                fontFamily: 'Proxima Nova Regular',
                color: Colors.white,
                fontSize: 28.0,
              ),
            ),
            Container(
              height: 20.0,
            ),
            Text(
              'We’ve designed OD360 to revolve around you. Pick up right where you left off and explore new content that’s tailored to the brands you want to know about.',
              style: TextStyle(
                fontFamily: 'Proxima Nova Regular',
                color: Colors.white,
                fontSize: 18.0,
              ),
            )
          ],
        ),
        colorBegin: Color(0xFF0066BE).withOpacity(0.2),
        colorEnd: Color(0xFF0B004B),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
      ),
    );
    slides.add(
      new Slide(
        widgetDescription: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'For You',
              style: TextStyle(
                fontFamily: 'Proxima Nova Regular',
                color: Colors.white,
                fontSize: 28.0,
              ),
            ),
            Container(
              height: 20.0,
            ),
            Text(
              'Get a high-level look at all the new and relevant content available on the app.',
              style: TextStyle(
                fontFamily: 'Proxima Nova Regular',
                color: Colors.white,
                fontSize: 18.0,
              ),
            )
          ],
        ),
        colorBegin: Color(0xFF0066BE).withOpacity(0.2),
        colorEnd: Color(0xFF0B004B),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
      ),
    );
    slides.add(
      new Slide(
        widgetDescription: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Leaderboards',
              style: TextStyle(
                fontFamily: 'Proxima Nova Regular',
                color: Colors.white,
                fontSize: 28.0,
              ),
            ),
            Container(
              height: 20.0,
            ),
            Text(
              'Know where you stand at a glance. We’ve put all of your rankings and reports in one location, so you can quickly check in and get back to your day.',
              style: TextStyle(
                fontFamily: 'Proxima Nova Regular',
                color: Colors.white,
                fontSize: 18.0,
              ),
            )
          ],
        ),
        colorBegin: Color(0xFF0066BE).withOpacity(0.2),
        colorEnd: Color(0xFF0B004B),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
      ),
    );
    slides.add(
      new Slide(
        widgetDescription: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'The Digest',
              style: TextStyle(
                fontFamily: 'Proxima Nova Regular',
                color: Colors.white,
                fontSize: 28.0,
              ),
            ),
            Container(
              height: 20.0,
            ),
            Text(
              'Keep up with all the latest news you need to know. Tips, tricks, and informative articles are always at your fingertips, making it easier than ever to stay ahead of the game.',
              style: TextStyle(
                fontFamily: 'Proxima Nova Regular',
                color: Colors.white,
                fontSize: 18.0,
              ),
            )
          ],
        ),
        colorBegin: Color(0xFF0066BE).withOpacity(0.2),
        colorEnd: Color(0xFF0B004B),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
      ),
    );
    slides.add(
      new Slide(
        widgetDescription: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'In the Loop',
              style: TextStyle(
                fontFamily: 'Proxima Nova Regular',
                color: Colors.white,
                fontSize: 28.0,
              ),
            ),
            Container(
              height: 20.0,
            ),
            Text(
              'Stay plugged in to the content that matters most to you. Watch videos or listen to podcasts created by the brands you follow.',
              style: TextStyle(
                fontFamily: 'Proxima Nova Regular',
                color: Colors.white,
                fontSize: 18.0,
              ),
            )
          ],
        ),
        colorBegin: Color(0xFF0066BE).withOpacity(0.2),
        colorEnd: Color(0xFF0B004B),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
      ),
    );
    slides.add(
      new Slide(
        widgetDescription: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Reports',
              style: TextStyle(
                fontFamily: 'Proxima Nova Regular',
                color: Colors.white,
                fontSize: 28.0,
              ),
            ),
            Container(
              height: 20.0,
            ),
            Text(
              'Want to take a deeper dive into past contests and attainment reports? You’ll find all of the Excel documents you need archived here.',
              style: TextStyle(
                fontFamily: 'Proxima Nova Regular',
                color: Colors.white,
                fontSize: 18.0,
              ),
            )
          ],
        ),
        colorBegin: Color(0xFF0066BE).withOpacity(0.2),
        colorEnd: Color(0xFF0B004B),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
      ),
    );
    slides.add(
      new Slide(
        widgetDescription: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Resources',
              style: TextStyle(
                fontFamily: 'Proxima Nova Regular',
                color: Colors.white,
                fontSize: 28.0,
              ),
            ),
            Container(
              height: 20.0,
            ),
            Text(
              'Looking for more information? From sales operations to key contacts to human resources documents, we made finding what you need quick and easy.',
              style: TextStyle(
                fontFamily: 'Proxima Nova Regular',
                color: Colors.white,
                fontSize: 18.0,
              ),
            )
          ],
        ),
        colorBegin: Color(0xFF0066BE).withOpacity(0.2),
        colorEnd: Color(0xFF0B004B),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
      ),
    );
  }

  Widget renderNextBtn() {
    return new Container(
      height: 47.0,
      width: 181.0,
      margin: EdgeInsets.only(left: 20.0, bottom: 20.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white.withOpacity(0.15),
      ),
      child: Text('NEXT',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Proxima Nova Regular',
            fontSize: 14.0,
            letterSpacing: 3.0,
          ),
          textAlign: TextAlign.center),
    );
  }

  Widget renderSkipBtn() {
    return new Container(
      height: 47.0,
      width: 102.0,
      margin: EdgeInsets.only(right: 20.0, bottom: 20.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.transparent,
      ),
      child: Text('SKIP',
          style: TextStyle(
            color: Color(0xFF6DACF5),
            fontFamily: 'Proxima Nova Regular',
            fontSize: 14.0,
            letterSpacing: 3.0,
          ),
          textAlign: TextAlign.center),
    );
  }

   Widget renderDoneBtn() {
    return new Container(
      height: 47.0,
      width: 181.0,
      margin: EdgeInsets.only(left: 20.0, bottom: 20.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white.withOpacity(0.15),
      ),
      child: Text('GET STARTED',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Proxima Nova Regular',
            fontSize: 14.0,
            letterSpacing: 3.0,
          ),
          textAlign: TextAlign.center),
    );
  }

  Widget buildSlides() {
    return new IntroSlider(
      // List slides
      slides: this.slides,
      isScrollable: false,
      isShowDotIndicator: false,
      isShowPrevBtn: false,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      widthSkipBtn: 102.0,

      // Next button
      renderNextBtn: this.renderNextBtn(),
      widthDoneBtn: 182.0,
      borderRadiusDoneBtn: 10.0,

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33000000),
      highlightColorDoneBtn: Color(0xff000000),

      // Show or hide status bar
      shouldHideStatusBar: true,

      backgroundColorAllSlides: Color(0xFF0066BE).withOpacity(0.2),
    );
  }

  void onDonePress() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: buildSlides(),
    );
  }
}
