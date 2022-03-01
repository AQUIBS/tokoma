import 'package:flutter/material.dart';
import 'package:tokoma/size_config.dart';
import 'package:tokoma/constant.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.images,
  }) : super(key: key);
  final String text;
  final String images;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          "TOKOMA",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              fontWeight: FontWeight.bold,
              color: kPrimaryColor),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(),
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          images,
          height: getPropotionateScreenHeight(256),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
