import 'package:esmstechware/screens/Onbordingscreen.dart';
import 'package:esmstechware/screens/challengedetailscreen.dart';
import 'package:esmstechware/screens/challengesscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void initialization() async {
  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();
}

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: Colors.transparent,
        ),
        routes: {
          ChallengesScreen.routename: (context) => ChallengesScreen(),
          Detail.routename: (context) => Detail(),
        },
        home: OnbordingScreen());
  }
}
