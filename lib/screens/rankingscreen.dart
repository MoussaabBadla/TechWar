import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/team.dart';

class RankingScreen extends StatelessWidget {
  const RankingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Leaderboard',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'List of the top teams in the event',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w300),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Container(
                  height: 70,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffCAA449),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Your Team ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '1st ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
            ),
            Divider(
              color: Colors.grey[200],
            ),
            SizedBox(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: teams.length,
                itemBuilder: (contex, index) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Container(
                          height: 70,
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: teams[index].Rank == 1
                                ? Color(0xffCAA449)
                                : teams[index].Rank == 2
                                    ? Color(0xffB4B4B4)
                                    : teams[index].Rank == 3
                                        ? Color(0xffAD8A56)
                                        : Color(0xff483462),
                          ),
                          child: Row(
                            children: [
                              Text(
                                teams[index].name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                              Spacer(),
                              Text(
                                '${teams[index].Rank}st ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )));
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

List<Team> teams = [
  Team(name: 'Team 05', Rank: 1),
  Team(name: 'GoBytes', Rank: 2),
  Team(name: 'Hackers', Rank: 3),
  Team(name: 'Scripters', Rank: 4),
  Team(name: 'karasuna', Rank: 5),
  Team(name: 'Botato', Rank: 6),
  Team(name: 'npm init', Rank: 7),
  Team(name: 'Flutter', Rank: 8),
  Team(name: 'Havit', Rank: 9),
];
