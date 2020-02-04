import 'package:flutter/material.dart';

class ForYouView extends StatefulWidget {
  @override
  _ForYouViewState createState() => _ForYouViewState();
}

class _ForYouViewState extends State<ForYouView> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
