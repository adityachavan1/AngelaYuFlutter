import 'package:flutter/material.dart';
import 'package:quizzler/quizPage.dart';

class BottomLargeButton extends StatelessWidget {
  final String btnTitle;
  final int moveToPage;
  final EdgeInsets margin;

  BottomLargeButton(
      {required this.btnTitle, required this.moveToPage, required this.margin});

  @override
  Widget build(BuildContext context) {
    _performAction(int pageNumber) {
      // Page Number : 0 --> HomePage, 1 --> QuizPage
      if (pageNumber == 0) {
        // Move To HomePage ( The root Page)
        Navigator.of(context, rootNavigator: true).pop();
      } else if (pageNumber == 1) {
        // Move to Quiz Page
        Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => QuizPage()));
      } else {
        // do nothing
      }
    }

    return Container(
      height: 52.0,
      // margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 58.0),
      margin: margin,
      child: ElevatedButton(
        onPressed: () {
          _performAction(moveToPage);
        },
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.all(0.0),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(75.0),
            ),
          ),
        ),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                // colors: [Color(0xff00b09b), Color(0xff96c93d)],
                colors: [Color(0xff04BABA), Color(0xff9fe6a0)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(28.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 280.0, minHeight: 52.0),
            alignment: Alignment.center,
            child: Text(
              btnTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 1.8,
                  fontFamily: 'Canela'),
            ),
          ),
        ),
      ),
    );
  }
}
