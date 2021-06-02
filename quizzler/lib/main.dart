import 'package:flutter/material.dart';
import 'package:quizzler/homePage.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xff9fe6a0),
      ),
      home: HomePage(),
    );
  }
}
