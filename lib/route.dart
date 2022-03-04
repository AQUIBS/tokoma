import 'package:flutter/widgets.dart';
import 'package:tokoma/screens/forgot_password/forgot_password.dart';
import 'package:tokoma/screens/login_success/login_success.dart';
import 'package:tokoma/screens/sign_in/sign_in_screen.dart';
import 'package:tokoma/screens/sign_up/sign_up_screen.dart';
import 'package:tokoma/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
  LoginSuccess.routeName: (context) => LoginSuccess(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
};
