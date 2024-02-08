import 'package:flutter/material.dart';
import 'package:studybuddy/screens/authentication/authenticate.dart';
import 'package:studybuddy/screens/home_screen.dart';
import 'package:studybuddy/models/usermodel.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);

    if (user != null) {
      return Home();
    } else {
      return Authenticate();
    }
  }
}
