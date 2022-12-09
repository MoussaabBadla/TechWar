import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

import '../main.dart';
import 'auth_screen.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  Widget build(BuildContext context) {
    return BackGround(
      child: Scaffold(
        body: Column(
          children: [
            Spacer(),
            Lottie.asset('assets/floating.json'),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Text(
                'Let’s Get Started.',
                style: TextStyle(
                    fontSize: 58,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil<void>(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const AuthScreen()),
                      (Route) => false);
                },
                child: Text(
                  'Join now.',
                  style: TextStyle(fontSize: 24),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xff922F6D),
                    minimumSize: Size(double.infinity, 50)),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
