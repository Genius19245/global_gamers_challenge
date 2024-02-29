import 'package:flutter/material.dart';
import 'package:global_gamers_challenge/screens/gamescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (_) => const SplashScreen(),
    );
  }

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context)
                  .pushReplacement(GameScreen.route());
            },
              child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Image.asset('assets/images/start.png'),
          )),
        ],
      ),
    );
  }
}
