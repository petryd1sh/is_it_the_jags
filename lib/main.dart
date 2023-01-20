import 'package:flutter/material.dart';
import 'package:is_it_the_jags/pages/board_page.dart';
import 'constants.dart';
import '/pages/splash_page.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IT WAS ALWAYS THE JAGS!!!',
      theme: appTheme,
      home: const SplashPage(),
      routes: <String, WidgetBuilder>{
        // '/': (_) => const SplashPage(),
        '/login': (_) => const BoardPage(),
      },
    );
  }
}