import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


import '../models/category.dart';
import '../models/challenges.dart';
import 'challengedetailscreen.dart';
import 'challengesscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Games',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Challenges are waiting for you !',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: categories.length,
                itemBuilder: (contex, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: categories[index].color.withOpacity(0.78),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              categories[index].name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              categories[index].desc,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Image.asset(categories[index].image),
                                Spacer(),
                                PlayButton(
                                  color: categories[index].color2,
                                  onTap: () => {
                                    categories[index].id == 0
                                        ? Navigator.of(context).pushNamed(
                                            Detail.routename,
                                            arguments:
                                                categories[index].challenges[0])
                                        : Navigator.of(context).pushNamed(
                                            ChallengesScreen.routename,
                                            arguments: categories[index])
                                  },
                                )
                              ],
                            )
                          ]),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ]),
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
    required this.color,
    required this.onTap,
  });
  final Color color;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: color,
            spreadRadius: 2,
            blurRadius: 20,
            offset: Offset(0, 0),
          ),
        ], borderRadius: BorderRadius.circular(10), color: color),
        child: Text(
          'Play',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }
}

List<Category> categories = [
  Category(
      name: 'Golden Challenge',
      id: 0,
      desc: 'Be the first to solve it !.',
      color: Color.fromRGBO(50, 40, 158, 1),
      color2: Color(0xff0073C6),
      challenges: [
        Challenge(
            desc: '',
            level: 'Easy',
            val: 50,
            name: 'Golden Challenge',
            type: 'Algorithme')
      ],
      image: 'assets/Featured.png'),
  Category(
      name: 'Danger Challenges',
      id: 1,
      challenges: challenges,
      desc: 'Win or lose points ! are you willing to risk ?',
      image: 'assets/poison.png',
      color2: Color(0xffA03535),
      color: Color(0xff743030)),
  Category(
      name: 'Unkown Challenges',
      color: Color(0xff1F1F1F),
      color2: Color(0xff474747),
      id: 2,
      challenges: challenges,
      desc: 'Are you ready to discover the unkown ?.',
      image: 'assets/anonymous.png'),
  Category(
      name: 'Normal Challenges',
      id: 3,
      challenges: challenges,
      color2: Color(0xff8435A0),
      desc: 'Main challenges of the event',
      color: Color(0xff3D2E57),
      image: 'assets/puzzle.png'),
  Category(
      name: 'Sponsored Challenges',
      id: 4,
      challenges: challenges,
      color2: Color(0xff8435A0),
      desc: 'Sponsored Challenges',
      color: Color(0xff5C289E),
      image: 'assets/star.png'),
];
