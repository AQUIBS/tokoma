import 'package:flutter/material.dart';
import 'package:tokoma/components/default_Button.dart';
import 'package:tokoma/screens/sign_in/sign_in_screen.dart';
import 'package:tokoma/size_config.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";

  LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: SizedBox(),
        title: Text(
          "Login Success",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: LSBody(),
    );
  }
}

class LSBody extends StatelessWidget {
  const LSBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: SizeConfig.screenHeight * 0.1,
      ),
      Image.asset(
        "assets/images/success.png",
        height: SizeConfig.screenHeight * 0.4,
      ),
      SizedBox(
        height: SizeConfig.screenHeight * 0.08,
      ),
      Text(
        "Login Success",
        style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
      const Spacer(),
      SizedBox(
        width: SizeConfig.screenWidth * 0.6,
        child: DefaultButton(
            text: "Back to home",
            press: () {
              Navigator.pushNamed(context, SignInScreen.routeName);
            }),
      ),
      const Spacer(),
    ]);
  }
}
