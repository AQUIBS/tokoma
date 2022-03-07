import 'package:flutter/material.dart';
import 'package:tokoma/screens/forgot_password/forgot_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";

  ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Forgot Password ",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: ForgotPassBody(),
    );
  }
}
