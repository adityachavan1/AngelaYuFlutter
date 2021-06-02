import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizzler/constants.dart';
import 'package:quizzler/custom_clippers/bottom_left_clipper.dart';
import 'package:quizzler/custom_clippers/bottom_left_clipper_bottom.dart';
import 'package:quizzler/custom_clippers/clip_shadow_path.dart';
import 'package:quizzler/custom_clippers/top_right_clipper.dart';
import 'package:quizzler/custom_clippers/top_right_clipper_bottom.dart';
import 'package:quizzler/widgets/custom_buttons.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final String assetName = 'assets/images/quizzler_into.svg';

    final clippedBoxShadow = BoxShadow(
      color: Colors.grey,
      offset: Offset(-5, 3),
      blurRadius: 5,
      spreadRadius: 10,
    );

    // Neumorphic colored container with 99% app width
    final widthNeuContainer = Container(
      width: width * 0.99,
      color: kNeumorphicColor,
    );

    // Neumorphic colored container with 99% app height
    final heightNeuContainer = Container(
      height: height * 0.99,
      color: kNeumorphicColor,
    );

    Future<bool> _onWillPop() async {
      return (await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Are you sure?'),
              content: Text('Do you want to quit the game?'),
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

    return Material(
      child: WillPopScope(
        onWillPop: _onWillPop,
        child: Stack(
          children: [
            Align(
              child: ClipShadowPath(
                shadow: clippedBoxShadow,
                clipper: TopRightNeuClipperBtm(),
                child: widthNeuContainer,
              ),
            ),
            Align(
              alignment: Alignment(30, -1),
              child: ClipShadowPath(
                shadow: clippedBoxShadow,
                clipper: TopRightNeuClipper(),
                child: widthNeuContainer,
              ),
            ),
            Align(
              alignment: Alignment(0, 30.5),
              child: ClipShadowPath(
                shadow: clippedBoxShadow,
                clipper: BottomLeftNeuClipperBtm(),
                child: heightNeuContainer,
              ),
            ),
            Align(
              alignment: Alignment(0, 9),
              child: SizedBox(
                width: width,
                height: height * 0.99,
                child: SvgPicture.asset(
                  assetName,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 80.5),
              child: ClipShadowPath(
                shadow: clippedBoxShadow,
                clipper: BottomLeftNeuClipper(),
                child: heightNeuContainer,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Shimmer.fromColors(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16.0, 90.0, 16.0, 16.0),
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
                highlightColor: Color(0xff9fe6a0),
                baseColor: Color(0xff04BABA),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomLargeButton(
                btnTitle: 'Take a Quiz',
                moveToPage: 1,
                margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 58.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
