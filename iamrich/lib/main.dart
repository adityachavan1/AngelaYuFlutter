import 'package:flutter/material.dart';

void main() => runApp(IAmRich());

class IAmRich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'i am rich',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        brightness: Brightness.dark,
        title: Text("I Am Rich"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Container(
          width: 300,
          height: 300,
          child: Image.asset('assets/images/diamond.png'),
        ),
      ),
    );
  }
}
