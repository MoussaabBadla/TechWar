import 'package:flutter/material.dart';

import 'challenges.dart';

class Category {
  final String name;
  final int id;
  final String desc;
  final Color color;
  final Color color2 ; 
  final String image;
  final List<Challenge> challenges; 
  Category(
      {required this.color,
      required this.image,
      required this.name,
      required this.challenges,
      required this.id,
      required this.color2,
      required this.desc});
}
