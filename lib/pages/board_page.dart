import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../constants.dart';


class BoardPage extends StatefulWidget {
  const BoardPage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(builder: (context) => const BoardPage());
  }

  @override
  BoardPageState createState() => BoardPageState();
}

class BoardPageState extends State<BoardPage> {

  Future<void> iwatj() async {
    setState(() {
      //_isLoading = true;
    });
    AudioPlayer().play(AssetSource('../iwatj.mp3'));
  }

  Future<void> duval() async {
    setState(() {
      //_isLoading = true;
    });
    AudioPlayer().play(AssetSource('../duval.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('IT WAS ALWAYS THE JAGS!', textAlign: TextAlign.center))),
      body: Center(
        child: ListView(
          padding: formPadding,
          children: [
            ElevatedButton(
              onPressed: duval,
              child: const Text('DUVAL'),
            ),
            ElevatedButton(
              onPressed: iwatj,
              // style: ElevatedButton.styleFrom(
              //   //change width and height on your need width = 200 and height = 50
              //   maximumSize: const Size(100, 50),
              // ),
              child: const Text('IWATJ'),
            ),
          ],
        ),
      )
    );
  }
}
