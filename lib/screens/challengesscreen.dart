import 'package:esmstechware/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/category.dart';
import 'auth_screen.dart';
import 'challengedetailscreen.dart';

class ChallengesScreen extends StatelessWidget {
  static const String routename = '/challenge';
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Category category =
        ModalRoute.of(context)?.settings.arguments as Category;

    return BackGround(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xffEE4FB3),
              ),
              Text(
                'Back',
                style: TextStyle(color: Color(0xffEE4FB3), fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                category.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                category.desc,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: category.challenges.length,
                  itemBuilder: (contex, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 42),
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: category.color.withOpacity(0.78),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                category.challenges[index].name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                category.challenges[index].desc,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text(
                                    category.id == 2
                                        ? 'Unknown'
                                        : '${category.challenges[index].level}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: category.id == 2
                                            ? Colors.grey
                                            : category.challenges[index]
                                                        .level ==
                                                    'Hard'
                                                ? Colors.red
                                                : category.challenges[index]
                                                            .level ==
                                                        'Easy'
                                                    ? Colors.greenAccent
                                                    : category.challenges[index]
                                                                .level ==
                                                            'Meduim'
                                                        ? Colors.amber
                                                        : Colors.orange),
                                  ),
                                  Spacer(),
                                  PlayButton(
                                    color: category.color2,
                                    onTap: () => {
                                      Navigator.of(context).pushNamed(
                                          Detail.routename,
                                          arguments: category.challenges[index])
                                    },
                                  )
                                ],
                              )
                            ]),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
