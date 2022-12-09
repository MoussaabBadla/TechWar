import 'package:esmstechware/screens/profilescreen.dart';
import 'package:esmstechware/screens/rankingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'auth_screen.dart';
import 'homescreen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});
  @override
  State<NavScreen> createState() => _NavScreenState();
}

int _selectedindex = 0;
Map<int, Widget> screens = {
  0: const HomeScreen(),
  1: const RankingScreen(),
  2: const Profile(),
};

class _NavScreenState extends State<NavScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackGround(
            child: Scaffold(
          body: screens[_selectedindex],
        )),
        Positioned(
          bottom: 40,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 68),
            child: Material(
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xff922F6D)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _selectedindex = 0;
                            });
                          },
                          icon: Image.asset('assets/idea.png')),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _selectedindex = 1;
                            });
                          },
                          icon: Image.asset('assets/pod.png')),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _selectedindex = 2;
                            });
                          },
                          icon: Image.asset('assets/user.png')),
                    ]),
              ),
            ),
          ),
        )
      ],
    );
  }
}
