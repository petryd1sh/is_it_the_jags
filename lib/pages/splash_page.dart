import 'dart:async';

import 'package:flutter/material.dart';
import 'package:is_it_the_jags/constants.dart';
import 'package:is_it_the_jags/pages/board_page.dart';

/// Page to redirect users to the appropriate page depending on the initial auth state
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}
class SplashPageState extends State<SplashPage>{

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const BoardPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("IT WAS ALWAYS THE JAGS!")),
      ),
      body: ListView(
        padding: formPadding,
        children: const [
          Center(
            child: Image(
                image: AssetImage('jags.png')
            ),
          ),
          preloader
        ],
      ),
    );
  }
}



