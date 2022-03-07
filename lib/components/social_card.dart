import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tokoma/size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    required this.icons,
    required this.press,
  }) : super(key: key);
  final String icons;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(6)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getPropotionateScreenHeight(50),
        width: getProportionateScreenWidth(50),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icons),
      ),
    );
  }
}
