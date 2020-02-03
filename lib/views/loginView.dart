import 'dart:async';

import 'package:flutter/material.dart';
import 'package:od360/views/welcomeView.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> with TickerProviderStateMixin {
  final _formLogin = GlobalKey<FormState>();
  final _buttonKey = GlobalKey();

  double _scale;
  bool showPassword, statusAnimation;
  String email;
  Animation<double> _animationLauncher,
      _animationLauncherVerify,
      _animationForm,
      width,
      widthVerify;
  AnimationController _controllerButton,
      _controllerLauncher,
      _controllerLauncherVerify,
      _controllerForm,
      _controllerWidth,
      _controllerWidthVerify;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showPassword = false;
    statusAnimation = false;
    _controllerLauncher = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
    _controllerLauncherVerify = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    _controllerForm = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    _controllerWidth = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    _controllerWidthVerify = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    )..addListener(() {
        setState(() {});
      });
    _controllerButton = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    _animationLauncher = CurvedAnimation(
      parent: _controllerLauncher,
      curve: Curves.decelerate,
    );
    _animationLauncherVerify = Tween<double>(
      begin: -.70,
      end: -.80,
    ).animate(
      CurvedAnimation(
        parent: _controllerWidthVerify,
        curve: Curves.easeOut,
      ),
    );
    _animationForm = CurvedAnimation(
      parent: _controllerLauncher,
      curve: Curves.decelerate,
    );
    width = Tween<double>(
      begin: 300.0,
      end: 200.0,
    ).animate(
      CurvedAnimation(
        parent: _controllerWidth,
        curve: Curves.decelerate,
      ),
    );
    widthVerify = Tween<double>(
      begin: 200.0,
      end: 120.0,
    ).animate(
      CurvedAnimation(
        parent: _controllerWidthVerify,
        curve: Curves.easeOut,
      ),
    );
    Future.delayed(
        Duration(milliseconds: 1000),
        () => {
              _controllerWidth.forward(),
              _controllerLauncher.forward(),
            });
    _controllerForm.forward();
    _controllerLauncher.addListener(
      () => setState(() {}),
    );
    _controllerForm.addListener(
      () => setState(() {}),
    );
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controllerButton.value;
    return SingleChildScrollView(
      child: Container(
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
              alignment: Alignment(
                  0.0,
                  statusAnimation
                      ? _animationLauncherVerify.value
                      : _animationLauncher.value * -.70),
              child: Image.asset(
                'assets/imgs/img_od360_logo.png',
                height: statusAnimation ? widthVerify.value : width.value,
                width: statusAnimation ? widthVerify.value : width.value,
              ),
            ),
            Align(
              alignment: Alignment(0.0, _animationLauncher.value * -.40),
              widthFactor: MediaQuery.of(context).size.width,
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 40.0, right: 40.0),
                child: Stack(
                  children: <Widget>[
                    AnimatedOpacity(
                      opacity: email != null && verifyEmail(email) ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 1000),
                      curve: Curves.decelerate,
                      child: Container(
                        margin: EdgeInsets.only(top: 6.0),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Welcome',
                          style: TextStyle(
                            color: Color(0xFF6DACF5),
                            fontFamily: 'Proxima Nova Regular',
                            fontSize: 14.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    AnimatedOpacity(
                      opacity: email != null && verifyEmail(email) ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 1000),
                      curve: Curves.easeOut,
                      child: Container(
                        margin: EdgeInsets.only(top: 26.0),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Juan Martinez',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontFamily: 'Proxima Nova Regular',
                            fontSize: 24.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: Form(
                key: _formLogin,
                child: Opacity(
                  opacity: _animationForm.value * 1.0,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 40.0,
                        right: 40.0,
                        bottom: _animationForm.value *
                            MediaQuery.of(context).size.height /
                            4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: Stack(
                            children: <Widget>[
                              TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please Enter Your Email';
                                  } else if (email != null &&
                                      !validateEmail(email)) {
                                    return 'Invalid Email';
                                  } else if (email != null &&
                                      !verifyEmail(email)) {
                                    return 'Email Not Recognized';
                                  }
                                  return null;
                                },
                                onChanged: (value) {
                                  setState(() {
                                    email = value;
                                    _formLogin.currentState.validate();
                                  });
                                },
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Proxima Nova Regular',
                                ),
                                decoration: InputDecoration(
                                  helperText: ' ',
                                  errorStyle: TextStyle(
                                    color: Color(0xFFFF8100),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF6DACF5),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF6DACF5),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF8100),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF8100),
                                    ),
                                  ),
                                  labelText: 'Email',
                                  labelStyle: TextStyle(
                                    color: Color(0xFF6DACF5),
                                    fontFamily: 'Proxima Nova Regular',
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0.0,
                                top: 14.0,
                                child: IconButton(
                                  padding: EdgeInsets.all(0.0),
                                  iconSize: 50,
                                  icon: (email != null)
                                      ? Image.asset(
                                          verifyEmail(email)
                                              ? 'assets/icns/icn_checkUsername@3x.png'
                                              : 'assets/icns/icn_error@3x.png',
                                        )
                                      : Container(),
                                  onPressed: () {
                                    // setState(() {
                                    //   showPassword = !showPassword;
                                    // });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                          child: Stack(
                            children: <Widget>[
                              TextFormField(
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Proxima Nova Regular',
                                ),
                                decoration: InputDecoration(
                                  helperText: ' ',
                                  errorStyle: TextStyle(
                                    color: Color(0xFFFF8100),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF6DACF5),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF6DACF5),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF8100),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF8100),
                                    ),
                                  ),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                    color: Color(0xFF6DACF5),
                                    fontFamily: 'Proxima Nova Regular',
                                  ),
                                ),
                                obscureText: !showPassword,
                              ),
                              Positioned(
                                right: 0.0,
                                top: 14.0,
                                child: IconButton(
                                  padding: EdgeInsets.all(0.0),
                                  iconSize: 50,
                                  icon: Image.asset(
                                    showPassword
                                        ? 'assets/icns/icn_hidePassword@3x.png'
                                        : 'assets/icns/icn_hidePassword_hidden@3x.png',
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      showPassword = !showPassword;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          key: _buttonKey,
                          onTap: () {
                            if (_formLogin.currentState.validate()) {
                              _formLogin.currentState.save();
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      WelcomeView()));
                            }
                          },
                          onTapDown: _onTapDown,
                          onTapUp: _onTapUp,
                          child: Transform.scale(
                            scale: _scale,
                            child: Container(
                              height: 40.0,
                              width: 140.0,
                              margin: EdgeInsets.only(top: 40.0),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFF10F4F4),
                                    Color(0xFF0066BE),
                                  ],
                                ),
                              ),
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Proxima Nova Regular',
                                  letterSpacing: 3.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20.0,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Copyright 2020 © Ortho Dermatologics. ODX-XXXXXX-XXXX',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Proxima Nova Regular',
                  fontSize: 10.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTapDown(TapDownDetails details) {
    _controllerButton.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controllerButton.reverse();
  }

  bool validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(value)) ? false : true;
  }

  bool verifyEmail(String value) {
    if (value == 'jmartinez@squareballstudios.com') {
      statusAnimation = true;
      _controllerWidthVerify.forward();
      _controllerLauncherVerify.forward();
    } else {
      if (statusAnimation) {
        _controllerWidthVerify.reverse();
        _controllerLauncherVerify.reverse();
      }
    }
    return (value != 'jmartinez@squareballstudios.com') ? false : true;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controllerLauncher.dispose();
    _controllerForm.dispose();
    _controllerWidth.dispose();
    _controllerButton.dispose();
    _controllerWidthVerify.dispose();
    _controllerLauncherVerify.dispose();
  }
}
