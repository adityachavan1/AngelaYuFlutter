import 'package:flutter/material.dart';
import 'package:quizzler/homePage.dart';
import 'dart:async';

// ignore: import_of_legacy_library_into_null_safe
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToHome();
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/images/bg.png',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Shimmer.fromColors(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Quizzler',
                    style: TextStyle(
                        fontSize: 70.0,
                        fontFamily: 'Pacifico',
                        shadows: <Shadow>[
                          Shadow(
                              blurRadius: 16.0,
                              color: Colors.black87,
                              offset: Offset.fromDirection(120, 10)),
                        ]),
                  ),
                ),
                baseColor: Color(0xff7f00ff),
                highlightColor: Color(0xffe100ff)),
          ],
        ),
      ),
    );
  }
}
