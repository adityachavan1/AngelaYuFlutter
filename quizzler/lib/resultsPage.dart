import 'package:flutter/material.dart';
import 'package:quizzler/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ResultsPage extends StatelessWidget {
  final double finalScore;
  final int questionsAttempted;
  final int correctlyAnswered;
  final int wronglyAnswered;
  final int questionsSkipped;

  const ResultsPage(
      {required this.finalScore,
      required this.correctlyAnswered,
      required this.questionsAttempted,
      required this.questionsSkipped,
      required this.wronglyAnswered});

  @override
  Widget build(BuildContext context) {
    final int totalQuestions = questionsAttempted + questionsSkipped;
    List<StatsTile> stats = [
      StatsTile(
        count: questionsAttempted,
        title: 'Attempted',
        total: totalQuestions,
        type: 1,
      ),
      StatsTile(
        count: questionsSkipped,
        title: 'Skipped',
        total: totalQuestions,
        type: 2,
      ),
      StatsTile(
        count: correctlyAnswered,
        title: 'Correct',
        total: totalQuestions,
        type: 3,
      ),
      StatsTile(
        count: wronglyAnswered,
        title: 'Wrong',
        total: totalQuestions,
        type: 4,
      ),
    ];
    return WillPopScope(
      onWillPop: () {
        return new Future(() => false);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        color: kBoxColor,
        child: SafeArea(
          child: Column(
            children: [
              StatsTile(
                  count: finalScore,
                  title: "Score",
                  total: totalQuestions,
                  type: 0),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 1,
                crossAxisSpacing: 15,
                mainAxisSpacing: 6.5,
                children: stats,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatsTile extends StatelessWidget {
  final dynamic count; // Can be int or double
  final int total;
  final int
      type; // 0: total score, 1 : attempted, 2: skipped, 3: correct, 4: wrong
  final String title;

  StatsTile(
      {required this.count,
      required this.title,
      required this.total,
      required this.type});

  Color _getProgressColor(int type) {
    Color progressColor;
    if (type == 0) {
      progressColor = Color(0xff9fe6a0);
    } else if (type == 1) {
      progressColor = Colors.lightBlue;
    } else if (type == 2) {
      progressColor = Colors.grey;
    } else if (type == 3) {
      progressColor = Colors.lightGreen;
    } else if (type == 4) {
      progressColor = Colors.red;
    } else {
      progressColor = Colors.black;
    }

    return progressColor;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: type == 0 ? 250 : 150,
        width: type == 0 ? double.infinity : 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kBoxColor,
          boxShadow: kBoxShadow,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: type == 0 ? 150 : 80.0,
              lineWidth: type == 0 ? 12 : 8.0,
              backgroundColor: Colors.white,
              percent: count < 0 ? 0.0 : count.ceil().toInt() / total,
              progressColor: _getProgressColor(type),
              circularStrokeCap: CircularStrokeCap.round,
              animation: true,
              center: type == 0
                  ? Text(
                      '${double.parse(count.toStringAsFixed(2))}/$total',
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: type == 0 ? 30.0 : 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  : Text(
                      '${count}/$total',
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: type == 0 ? 30.0 : 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '$title: ${count}',
              style: TextStyle(
                  color: kTextColor,
                  fontSize: type == 0 ? 25.0 : 16.0,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
