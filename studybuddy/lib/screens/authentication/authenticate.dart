import 'package:flutter/material.dart';
import 'package:studybuddy/screens/login_screen.dart';
import 'package:studybuddy/screens/registor_screen.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool singinPage = true;

  //toggle pages
  void switchPages() {
    setState(() {
      singinPage = !singinPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (singinPage == true) {
      return LoginPage(toggle: switchPages);
    } else {
      return RegisterPage(toggle: switchPages);
    }
  }
}
