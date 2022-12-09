import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://tech-war.vercel.app');
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Profile',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xff563C73).withOpacity(0.78),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage(
                                  'assets/man1.png',
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Moussaab Badla',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '@mossaab',
                                  style: TextStyle(
                                      color:
                                          Color(0xffA1A1A1).withOpacity(0.69),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset('assets/edit.png'))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(children: [
                          Text(
                            'Team ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            'Team 05 ',
                            style: TextStyle(
                                color: Color(0xffA1A1A1).withOpacity(0.69),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ]),
                        NewDiveder(),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Text(
                            'Team rank ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            '1st',
                            style: TextStyle(
                                color: Color(0xffA1A1A1).withOpacity(0.69),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ]),
                        NewDiveder(),
                        Row(children: [
                          Text(
                            'Solved ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            '12/20',
                            style: TextStyle(
                                color: Color(0xffA1A1A1).withOpacity(0.69),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ]),
                      ]),
                ),
              ),
              GestureDetector(
                onTap: _launchUrl,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xff563C73).withOpacity(0.78),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color(0xff563C73), shape: BoxShape.circle),
                        child: Image.asset(
                          'assets/internet.png',
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Website',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/iosarrow.png'))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xff563C73).withOpacity(0.78),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xff563C73), shape: BoxShape.circle),
                      child: Image.asset(
                        'assets/arrow.png',
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Log out',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () => {},
                        icon: Image.asset('assets/iosarrow.png'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewDiveder extends StatelessWidget {
  const NewDiveder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Container(
        height: 1,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              Color(0xff493463).withOpacity(0),
              Color(0xffD53398),
              Color(0xff493463).withOpacity(0),
            ])),
      ),
    );
  }
}
