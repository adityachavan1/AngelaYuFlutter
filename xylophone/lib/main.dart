import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(Xylophone());
  });
}

class Xylophone extends StatelessWidget {
  final List<Expanded> noteTiles = [];

  void playNote(int note) {
    AudioCache player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded noteTile({int note = 1, Color color = Colors.red}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        child: Text(''),
        onPressed: () => playNote(note),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    tileColors.forEach((key, value) {
      noteTiles.add(noteTile(
        note: key,
        color: value,
      ));
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone App',
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.white,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Xylophone'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: noteTiles,
          ),
        ),
      ),
    );
  }
}
