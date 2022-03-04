import 'package:flutter/material.dart';
import 'package:tokoma/screens/splash/components/body.dart';
import 'package:tokoma/size_config.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    // You have to call it on starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
