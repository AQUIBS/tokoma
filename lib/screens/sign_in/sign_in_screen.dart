import 'package:flutter/material.dart';
import 'package:tokoma/screens/sign_in/sign_in_body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Sign in ",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: Body(),
    );
  }
}
