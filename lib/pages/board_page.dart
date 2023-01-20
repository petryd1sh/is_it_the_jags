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


    // final response = await supabase.auth.signIn(
    //   email: _emailController.text,
    //   password: _passwordController.text,
    // );
    // final error = response.error;
    // if (error != null) {
    //   context.showErrorSnackBar(message: error.message);
    // }
    // Navigator.of(context)
    //     .pushAndRemoveUntil(ChatPage.route(), (route) => false);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IT WAS ALWAYS THE JAGS!!!')),
      body: ListView(
        padding: formPadding,
        children: [
          ElevatedButton(
            onPressed: iwatj,
            child: const Text('ITWATJ'),
          ),
        ],
      )
    );
  }
}
