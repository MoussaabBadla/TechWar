import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/challenges.dart';
import 'auth_screen.dart';

class Detail extends StatelessWidget {
  static const String routename = '/detail';
   Detail({super.key});
  @override
  Widget build(BuildContext context) {
    final Challenge challenge =
        ModalRoute.of(context)?.settings.arguments as Challenge;

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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                challenge.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'value : ${challenge.val} points ',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.83),
                    fontSize: 22,
                    fontWeight: FontWeight.w300),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    clipBehavior: Clip.antiAlias,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff3D3658).withOpacity(0.47)),
                    child: Text(
                      challenge.type,
                      style: TextStyle(color: Color(0xffA1A1A1), fontSize: 16),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Color(0xff563C73).withOpacity(0.78),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                          color: Color(0xff563C73), shape: BoxShape.circle),
                      child: Image.asset(
                        'assets/download.png',
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Download',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Image.asset('assets/iosarrow.png')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: TextFormField(
                  style: TextStyle(
                    color: Color(0xffA1A1A1),
                    fontSize: 17,
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: const Color(0xff3D3658).withOpacity(0.47),
                      iconColor: Colors.black,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 16),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      errorBorder: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Color(0xffA1A1A1),
                        fontSize: 17,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Enter your solution here'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ElevatedButton(
                                    onPressed: () => {
                                    },
                  child: Text(
                    'Submit',
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
            ],
          ),
        ),
      ),
    ));
  }
}
