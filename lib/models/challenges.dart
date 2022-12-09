class Challenge {
  final String name;
  final String desc;
  final String type;
  final String level;
  final int val;
  Challenge({
    required this.desc,
    required this.val,
    required this.level,
    required this.name,
    required this.type,
  });
}

List<Challenge> challenges = [
  Challenge(
      desc: 'Quick description',
      level: 'Hard',
      name: 'Chalenge',
      val: 200,
      type: 'Mobile'),
  Challenge(
      desc: 'Quick description',
      level: 'Easy',
            val: 50,

      name: 'Chalenge',
      type: 'Design'),
  Challenge(
      desc: 'Quick description',
      level: 'Meduim',
            val: 100,

      name: 'Chalenge',
      type: 'WEB'),
  Challenge(
      desc: 'Quick description',
      level: 'Very Hard',
      name: 'Chalenge',
            val: 250,

      type: 'Mobile'),
  Challenge(
      desc: 'Quick description',
      level: 'Very Hard',
      name: 'Chalenge',
            val: 250,

      type: 'intelligence artificielle'),
  Challenge(
      desc: 'Quick description',
      level: 'Very Hard',
            val: 250,

      name: 'Chalenge',
      type: 'Algorithm '),
  Challenge(
      desc: 'Quick description',
      level: 'Easy',
      name: 'Chalenge',
            val: 50,

      type: 'Algorithm '),
  Challenge(
      desc: 'Quick description',
      level: 'Easy',
            val: 50,

      name: 'Chalenge',
      type: 'CTF'),
  Challenge(
      desc: 'Quick description',
      level: 'Hard',
            val: 200,

      name: 'Chalenge',
      type: 'Mobile'),
];
