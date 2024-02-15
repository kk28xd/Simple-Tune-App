import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff26313A),
          title: const Text("Flutter Tune",
              style: TextStyle(color: Color(0xffDEECF1), fontSize: 25)),
          centerTitle: true,
        ),
        body: const Column(
          children: [
            con(color: Color(0xffFE4039), song: "note1.wav",),
            con(color: Color(0xffFD982B), song: "note2.wav",),
            con(color: Color(0xffFDEB57), song: "note3.wav",),
            con(color: Color(0xff33AF57), song: "note4.wav",),
            con(color: Color(0xff009587), song: "note5.wav",),
            con(color: Color(0xffFE4039), song: "note6.wav",),
            con(color: Color(0xff772281), song: "note7.wav",),
          ],
        ),
      ),
    );
  }
}

List items = [
  {
    'color' : Color(0xffFE4039),
    'song' : 'note1.wav',
  },
  {
    'color' : Color(0xffFE4039),
    'song' : 'note2.wav',
  },
  {
    'color' : Color(0xffFE4039),
    'song' : 'note3.wav',
  },
  {
    'color' : Color(0xffFE4039),
    'song' : 'note4.wav',
  },
  {
    'color' : Color(0xffFE4039),
    'song' : 'note5.wav',
  },
  {
    'color' : Color(0xffFE4039),
    'song' : 'note6.wav',
  },
  {
    'color' : Color(0xff772281),
    'song' : 'note7.wav',
  },
];



class con extends StatelessWidget {
  const con({super.key, required this.color, required this.song});

  final color;
  final song;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () async {
          final player = AudioPlayer();
          await player.play(AssetSource(song));
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
