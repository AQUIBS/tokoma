import 'package:flutter/material.dart';
import 'package:tokoma/components/default_Button.dart';
import 'package:tokoma/constant.dart';
import 'package:tokoma/size_config.dart';

import '../../components/custom_suffix_icons.dart';
import '../../components/form_error.dart';

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
              SignForm()
            ],
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _FormKey = GlobalKey<FormState>();
  final List<String> errors = ["Demo Error"];
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _FormKey,
        child: Column(
          children: [
            buildEmailForm(),
            SizedBox(
              height: getPropotionateScreenHeight(30),
            ),
            buildPasswordForm(),
            SizedBox(
              height: getPropotionateScreenHeight(30),
            ),
            FormError(errors: errors),
            DefaultButton(
                text: "Continue",
                press: () {
                  if (_FormKey.currentState!.validate()) {
                    _FormKey.currentState!.save();
                  }
                })
          ],
        ));
  }

  TextFormField buildPasswordForm() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        }

        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }

        return null;
      },
      decoration: const InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          Icons: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField buildEmailForm() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          Icons: "assets/icons/Mail.svg",
        ),
      ),
    );
  }
}
