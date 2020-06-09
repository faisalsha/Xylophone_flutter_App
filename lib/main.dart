import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {
  void Play(SongNumber){
    final player = AudioCache();
    player.play('note$SongNumber.wav');
  }

  Expanded tapp({Color color,int SoundNumber}){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          Play(SoundNumber);
        },
        color: color,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,

        body:SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             tapp(color: Colors.red,SoundNumber: 1),
             tapp(color: Colors.greenAccent,SoundNumber: 2),
             tapp(color: Colors.blue,SoundNumber: 3),
             tapp(color: Colors.amber,SoundNumber: 4),
             tapp(color: Colors.teal,SoundNumber: 5),
             tapp(color: Colors.grey,SoundNumber: 6),
             tapp(color: Colors.white,SoundNumber: 7),
           ],
          ),
        )
      ),
    );
  }
}


