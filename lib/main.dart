import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(Color colorOfKey, int soundNumber, String soundName){
    return Expanded(
      child: MaterialButton(
        child: Text(
          '$soundName',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        color: colorOfKey,
        onPressed: (){
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red,1,"Sa"),
              buildKey(Colors.orange,2,"Re"),
              buildKey(Colors.yellow,3,"Ga"),
              buildKey(Colors.green,4,"Ma"),
              buildKey(Colors.teal,5,"Pa"),
              buildKey(Colors.blue,6,"Dha"),
              buildKey(Colors.purple,7,"Ni"),
            ],
          )
        ),
      ),
    );
  }
}
