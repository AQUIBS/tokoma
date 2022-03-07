import 'package:flutter/material.dart';
import 'package:tokoma/constant.dart';
import 'package:tokoma/size_config.dart';

import '../screens/sign_up/sign_up_screen.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Dont't have account? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
          child: Text(
            "Sign up ",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
