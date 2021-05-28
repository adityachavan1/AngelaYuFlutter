import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(new DiceeApp());
  });
}

class DiceeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  static var _random = new Random();
  static var _leftDiceNumber = _random.nextInt(6) + 1;
  static var _rightDiceNumber = _random.nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        brightness: Brightness.dark,
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 100.0),
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image(
                      image: AssetImage('images/dice$_leftDiceNumber.png')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image(
                      image: AssetImage('images/dice$_rightDiceNumber.png')),
                )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50.0),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.white,
              ),
              child: Text('Roll'),
              onPressed: () {
                setState(() {
                  _leftDiceNumber = _random.nextInt(6) + 1;
                  _rightDiceNumber = _random.nextInt(6) + 1;
                });
              },
            ),
          )
        ]),
      ),
    );
  }
}
