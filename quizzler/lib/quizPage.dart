import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quizzler/constants.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:quizzler/resultsPage.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  CountDownController _controller = CountDownController();
  int _duration = 20;

  List<int> questionKeys = [];

  int questionsCovered = 0;
  int questionsAttempted = 0;
  int questionsSkipped = 0;
  int correctlyAnswered = 0;
  int wronglyAnswered = 0;
  int cardSelected = 0; // Indicates no card selected...
  double finalScore = 0;
  double totalNegativeMarking = 0;
  double totalPositiveMarking = 0;
  bool isTapped = false;
  bool gameOver = false;
  LinearGradient containerColor = gradients[Random().nextInt(gradients.length)];

// Create Option Button
  Expanded createOptionButton(
      {required String text, required int optionNumber}) {
    bool answeredCorrectly;
    int correctOption = questions[questionKeys[questionsCovered]]?[5];

    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          if (!isTapped) {
            setState(() {
              isTapped = true;
              cardSelected = optionNumber;
              answeredCorrectly = (optionNumber == correctOption);
              questionsAttempted += 1;
              if (answeredCorrectly) {
                correctlyAnswered += 1;
                totalPositiveMarking += 1;
                finalScore += 1;
              } else {
                wronglyAnswered += 1;
                totalNegativeMarking += 0.25;
                finalScore -= 0.25;
              }
            });
          }
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
          decoration: ShapeDecoration(
            gradient: isTapped && cardSelected == optionNumber
                ? containerColor
                : LinearGradient(
                    colors: [Colors.grey.shade700, Colors.grey.shade800],
                  ),
            shape: isTapped
                ? (correctOption == optionNumber
                    ? new RoundedRectangleBorder(
                        side: new BorderSide(
                            color: Colors.greenAccent.withOpacity(0.5),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(30.0))
                    : new RoundedRectangleBorder(
                        side: new BorderSide(
                            color: Colors.redAccent.withOpacity(0.5),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(30.0)))
                : new RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(30.0)),
            shadows: _shadows(),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
            child: Center(
              child: ListTile(
                tileColor: Colors.transparent,
                title: Text(
                  '$text',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                trailing: isTapped
                    ? Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: correctOption == optionNumber
                            ? Icon(
                                Icons.check,
                                color: Colors.green,
                                size: 20.0,
                              )
                            : Icon(
                                Icons.close,
                                color: Colors.red,
                                size: 20.0,
                              ),
                      )
                    : Text(''),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _exitGameDialog() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Do you want to exit the Game'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  List<BoxShadow> _shadows() {
    return [
      BoxShadow(
        color: Colors.grey.shade900,
        offset: Offset(5.0, 5.0),
        blurRadius: 15.0,
        spreadRadius: 1.0,
      ),
      BoxShadow(
        color: Colors.grey.shade800,
        offset: Offset(-5.0, -5.0),
        blurRadius: 15.0,
        spreadRadius: 1.0,
      ),
    ];
  }

  @override
  void initState() {
    questionKeys = questions.keys.toList()..shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Column _buildQuestionWithOptions() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Question Area
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: containerColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0)),
                      boxShadow: _shadows(),
                    ),
                    child: Center(
                      child: Text(
                        // Get and display the question...
                        questions[questionKeys[questionsCovered]]?[0],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'Canela',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, right: 20.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: CircularCountDownTimer(
                        width: 40,
                        height: 40,
                        duration: _duration,
                        fillColor: Colors.white,
                        ringColor: Colors.amber,
                        controller: _controller,
                        backgroundColor: Colors.white54,
                        strokeWidth: 6.0,
                        strokeCap: StrokeCap.round,
                        isTimerTextShown: true,
                        initialDuration: 0,
                        isReverse: true,
                        onComplete: () {
                          if (!isTapped) {
                            setState(() {
                              questionsSkipped += 1;
                              questionsCovered += 1;
                              containerColor =
                                  gradients[Random().nextInt(gradients.length)];
                            });
                          } else {
                            setState(() {
                              isTapped = false;
                              questionsCovered += 1;
                              containerColor =
                                  gradients[Random().nextInt(gradients.length)];
                            });
                          }
                          _controller.restart();
                        },
                        textStyle: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Options Area
          createOptionButton(
              text: questions[questionKeys[questionsCovered]]?[1],
              optionNumber: 1),

          createOptionButton(
              text: questions[questionKeys[questionsCovered]]?[2],
              optionNumber: 2),

          createOptionButton(
              text: questions[questionKeys[questionsCovered]]?[3],
              optionNumber: 3),
          createOptionButton(
              text: questions[questionKeys[questionsCovered]]?[4],
              optionNumber: 4),

          // Progress Indicator Area
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            height: 10,
            decoration: BoxDecoration(boxShadow: _shadows()),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                value: (questionsCovered + 1) / (questionKeys.length),
                valueColor:
                    new AlwaysStoppedAnimation<Color>(Color(0xff00ff00)),
                backgroundColor: Color(0xffD6D6D6),
              ),
            ),
          ),

          // Bottom Btns and Text Area
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[850],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade900,
                        offset: Offset(5.0, 5.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.grey.shade800,
                        offset: Offset(-5.0, -5.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () async {
                      if (await _exitGameDialog()) {
                        Navigator.of(context).pop();
                      }
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.white,
                      size: 22.0,
                    ),
                  ),
                ),
                Text('${questionsCovered + 1}/${questionKeys.length}',
                    style: TextStyle(color: Colors.white, fontSize: 20.0)),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[850],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade900,
                        offset: Offset(-5.0, -5.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.grey.shade800,
                        offset: Offset(5.0, 5.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      if (!isTapped) {
                        setState(() {
                          questionsSkipped += 1;
                          questionsCovered += 1;
                          containerColor =
                              gradients[Random().nextInt(gradients.length)];
                        });
                      } else {
                        setState(() {
                          isTapped = false;
                          questionsCovered += 1;
                          containerColor =
                              gradients[Random().nextInt(gradients.length)];
                        });
                      }
                      _controller.restart();
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                      size: 22.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    setState(() {
      gameOver = questionsCovered == questions.length;
    });
    return WillPopScope(
      onWillPop: _exitGameDialog,
      child: Material(
        color: Colors.grey[850],
        child: !gameOver
            ? _buildQuestionWithOptions()
            : ResultsPage(
                finalScore: finalScore,
                correctlyAnswered: correctlyAnswered,
                wronglyAnswered: wronglyAnswered,
                questionsAttempted: questionsAttempted,
                questionsSkipped: questionsSkipped,
              ),
      ),
    );
  }
}
