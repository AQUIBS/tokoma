import 'package:flutter/material.dart';
import 'package:tokoma/components/no_account_text.dart';
import 'package:tokoma/components/social_card.dart';

import 'package:tokoma/screens/sign_in/sign_in_form.dart';
import 'package:tokoma/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(28),
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Sign in with your email and password \n or continue with social meadia",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                SignForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      press: () {},
                      icons: "assets/icons/google-icon.svg",
                    ),
                    SocialCard(
                      press: () {},
                      icons: "assets/icons/facebook-2.svg",
                    ),
                    SocialCard(
                      press: () {},
                      icons: "assets/icons/twitter.svg",
                    ),
                  ],
                ),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
