// List<String> questions = [
//   'You can lead a cow down stairs but not up stairs.',
//   'Approximately one quarter of the human bones are in the feet.',
//   'A slug\'s blood is green.',
// ];

import 'package:flutter/material.dart';

final kNeumorphicColor = Color.fromRGBO(235, 228, 229, 1);
final Color kBoxColor = Color(0xFFEFF3FF);
final Color kTextColor = Color.fromRGBO(4, 186, 186, 1);

final kBoxShadow = [
  BoxShadow(color: Colors.white, offset: Offset(-10, -10), blurRadius: 10),
  BoxShadow(
      color: Colors.black.withOpacity(.15),
      offset: Offset(4, 4),
      blurRadius: 15)
];

final kIShadow = [
  BoxShadow(
      color: Colors.black.withOpacity(.15),
      //blurRadius: 1,
      spreadRadius: 2,
      offset: Offset(-1, 1)),
  BoxShadow(
      color: Colors.white.withOpacity(.7),
      spreadRadius: 2,
      offset: Offset(1, -1)),
  BoxShadow(
      color: Colors.black.withOpacity(.15),
      spreadRadius: 2,
      //  blurRadius: 1,
      offset: Offset(-1, -1)),
  BoxShadow(
      color: Colors.white.withOpacity(.7),
      spreadRadius: 2,
      offset: Offset(1, 1)),
];

Map<int, Map<int, dynamic>> questions = {
  1: {
    0: 'Question 1',
    1: 'Option 1',
    2: 'Option 2',
    3: 'Option 3',
    4: 'Option 4',
    5: 2 // Denotes Correct Option...
  },
  2: {
    0: 'Question 2',
    1: 'Option 1',
    2: 'Option 2',
    3: 'Option 3',
    4: 'Option 4',
    5: 4 // Denotes Correct Option...
  },
  3: {
    0: 'Question 3',
    1: 'Option 1',
    2: 'Option 2',
    3: 'Option 3',
    4: 'Option 4',
    5: 3 // Denotes Correct Option...
  },
  4: {
    0: 'Question 4',
    1: 'Option 1',
    2: 'Option 2',
    3: 'Option 3',
    4: 'Option 4',
    5: 1 // Denotes Correct Option...
  },
  5: {
    0: 'Question 5',
    1: 'Option 1',
    2: 'Option 2',
    3: 'Option 3',
    4: 'Option 4',
    5: 2 // Denotes Correct Option...
  },
  6: {
    0: 'Question 6',
    1: 'Option 1',
    2: 'Option 2',
    3: 'Option 3',
    4: 'Option 4',
    5: 3 // Denotes Correct Option...
  },
  7: {
    0: 'Question 7',
    1: 'Option 1',
    2: 'Option 2',
    3: 'Option 3',
    4: 'Option 4',
    5: 4 // Denotes Correct Option...
  },
  8: {
    0: 'Question 8',
    1: 'Option 1',
    2: 'Option 2',
    3: 'Option 3',
    4: 'Option 4',
    5: 1 // Denotes Correct Option...
  },
  9: {
    0: 'Question 9',
    1: 'Option 1',
    2: 'Option 2',
    3: 'Option 3',
    4: 'Option 4',
    5: 2 // Denotes Correct Option...
  },
  10: {
    0: 'Question 10',
    1: 'Option 1',
    2: 'Option 2',
    3: 'Option 3',
    4: 'Option 4',
    5: 3 // Denotes Correct Option...
  },
};

List<LinearGradient> gradients = [
  LinearGradient(
    colors: <Color>[Color(0xff00F260), Color(0xff0575E6)],
  ),
  LinearGradient(
    colors: <Color>[Color(0xff0575E6), Color(0xff021B79)], // Very Blue
  ),
  LinearGradient(
    colors: <Color>[Color(0xffDCE35B), Color(0xff45B649)], // Easy Med
  ),
  LinearGradient(
    colors: <Color>[Color(0xff3494E6), Color(0xffEC6EAD)], // Vice City
  ),
  LinearGradient(
    colors: <Color>[Color(0xff67B26F), Color(0xff4ca2cd)], // Mild
  ),
  LinearGradient(
    colors: <Color>[Color(0xffee0979), Color(0xffff6a00)], // Ibiza Sunset
  ),
  LinearGradient(
    colors: <Color>[
      Color(0xffA770EF),
      Color(0xffCF8BF3),
      Color(0xffFDB99b)
    ], // Radar
  ),
  LinearGradient(
    colors: <Color>[Color(0xff41295a), Color(0xff2F0743)], // 80's Purple
  ),
  LinearGradient(
    colors: <Color>[Color(0xfff4c4f3), Color(0xfffc67fa)], // Black Rose
  ),
  LinearGradient(
    colors: <Color>[
      Color(0xffff7e5f),
      Color(0xfffeb47b)
    ], // Ed's Sunset Gradient
  ),
  LinearGradient(
    colors: <Color>[Color(0xffff00cc), Color(0xff333399)], // Cosmic Fusion
  ),
  LinearGradient(
    colors: <Color>[Color(0xff4ecdc4), Color(0xff556270)], // Disco
  ),
  LinearGradient(
    colors: <Color>[Color(0xfff85032), Color(0xffe73827)], // Blood Red
  ),
  LinearGradient(
    colors: <Color>[Color(0xffcb2d3e), Color(0xffef473a)], // Firewatch
  ),
  LinearGradient(
    colors: <Color>[Color(0xff56ab2f), Color(0xffa8e063)], // Lush
  ),
  LinearGradient(
    colors: <Color>[Color(0xff000428), Color(0xff004e92)], // Frost
  ),
  LinearGradient(
    colors: <Color>[Color(0xff42275a), Color(0xff734b6d)], // Mauve
  ),
  LinearGradient(
    colors: <Color>[Color(0xff141e30), Color(0xff243b55)], // Royal
  ),
  LinearGradient(
    colors: <Color>[Color(0xff11998e), Color(0xff38ef7d)], // Quepal
  ),
  LinearGradient(
    colors: <Color>[Color(0xffe96443), Color(0xff904e95)], // Grapefruit Sunset
  ),
  LinearGradient(
    colors: <Color>[Color(0xff3a7bd5), Color(0xff3a6073)], // Solid Vault
  ),
  LinearGradient(
    colors: <Color>[Color(0xffff5f6d), Color(0xffffc371)], // Sweet Morning
  ),
  LinearGradient(
    colors: <Color>[Color(0xffff4b1f), Color(0xffff9068)], // Sylvia
  ),
  LinearGradient(
    colors: <Color>[Color(0xff4b79a1), Color(0xff283e51)], // Dark Skies
  ),
  LinearGradient(
    colors: <Color>[Color(0xff834d9b), Color(0xffd04ed6)], // Suzy
  ),
  LinearGradient(
    colors: <Color>[Color(0xff2980b9), Color(0xff2c3e50)], // Nighthawk
  ),
  LinearGradient(
    colors: <Color>[Color(0xff1e3c72), Color(0xff2a5298)], // Joomla
  ),
  LinearGradient(
    colors: <Color>[Color(0xff6a3093), Color(0xffa044ff)], // Purplin
  ),
  LinearGradient(
    colors: <Color>[Color(0xff457fca), Color(0xff5691c8)], // Inbox
  ),
  LinearGradient(
    colors: <Color>[Color(0xffb24592), Color(0xfff15f79)], // Blush
  ),
  LinearGradient(
    colors: <Color>[Color(0xffffb75e), Color(0xffed8f03)], // Light Orange
  ),
  LinearGradient(
    colors: <Color>[Color(0xff76b852), Color(0xff8dc26f)], // Little Leaf
  ),
  LinearGradient(
    colors: <Color>[Color(0xff673AB7), Color(0xff512DA8)], // Deep Purple
  ),
  LinearGradient(
    colors: <Color>[Color(0xfff46b45), Color(0xffeea849)], // MasterCard
  ),
  LinearGradient(
    colors: <Color>[Color(0xfff005C97), Color(0xff363795)], // Clear Sky
  ),
  LinearGradient(
    colors: <Color>[Color(0xffe53935), Color(0xffe35d5b)], // Passion
  ),
  LinearGradient(
    colors: <Color>[Color(0xfffe8c00), Color(0xfff83600)], // Sound Cloud
  ),
  LinearGradient(
    colors: <Color>[Color(0xff870000), Color(0xff190A05)], // The Strain
  ),
  LinearGradient(
    colors: <Color>[Color(0xffe52d27), Color(0xffb31217)], // Youtube
  ),
  LinearGradient(
    colors: <Color>[Color(0xfffc00ff), Color(0xff00dbde)], // Timber
  ),
  LinearGradient(
    colors: <Color>[Color(0xff00c6ff), Color(0xff0072ff)], // Facebook Messenger
  ),
  LinearGradient(
    colors: <Color>[
      Color(0xff0f0c29),
      Color(0xff302b63),
      Color(0xff24243e)
    ], // Lawrencium
  ),
  LinearGradient(
    colors: <Color>[Color(0xffE44D26), Color(0xffF16529)], // HTML
  ),
  LinearGradient(
    colors: <Color>[Color(0xffF2994A), Color(0xffF2C94C)], // Sunkist
  ),
];