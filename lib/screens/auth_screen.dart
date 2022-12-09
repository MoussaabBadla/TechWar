import 'package:esmstechware/screens/navscreen.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../widgets/textfield.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

int selectedindex = 0;

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return BackGround(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                selectedindex == 0 ? 'Hello Nerd' : 'Almost There !',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                selectedindex == 0
                    ? 'Welcome to TechWar'
                    : 'We are excited to see you here!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w300),
              ),
              Spacer(),
              if (selectedindex == 1)
                CustomTextfield(
                    registerData: {},
                    mapkey: "username",
                    selectedindex: selectedindex,
                    textInputType: TextInputType.emailAddress),
              CustomTextfield(
                  registerData: {},
                  mapkey: "email",
                  selectedindex: selectedindex,
                  textInputType: TextInputType.emailAddress),
              PasswordTextfield(
                registerData: {},
                selectedindex: selectedindex,
                confirme: false,
              ),
              if (selectedindex == 1)
                PasswordTextfield(
                  registerData: {},
                  selectedindex: selectedindex,
                  confirme: true,
                ),
              if (selectedindex == 0)
                Row(
                  children: [
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Forgot your password ?',
                        style: TextStyle(color: Color(0xffA1A1A1)),
                      ),
                    ),
                  ],
                ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ElevatedButton(
                  onPressed: () {
                    {
                      Navigator.pushAndRemoveUntil<void>(
                          context,
                          MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const NavScreen()),
                          (Route) => false);
                    }
                  },
                  child: Text(
                    selectedindex == 0 ? 'Sign in' : 'Sign Up',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    selectedindex == 0
                        ? 'Not a member?  '
                        : ' already have an account ? ',
                    style: TextStyle(color: Color(0xffA1A1A1), fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () => setState(() {
                      selectedindex == 0
                          ? selectedindex = 1
                          : selectedindex = 0;
                    }),
                    child: Text(
                      selectedindex == 0 ? 'Register now' : 'Login',
                      style: TextStyle(color: Color(0xffEE4FB3), fontSize: 16),
                    ),
                  )
                ],
              ),
              Spacer(
                flex: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BackGround extends StatelessWidget {
  const BackGround({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: linearGradient,
            image: DecorationImage(image: AssetImage('assets/backGround.png'))),
        child: child);
  }
}
