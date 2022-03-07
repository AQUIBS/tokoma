import 'package:flutter/material.dart';
import 'package:tokoma/components/custom_suffix_icons.dart';
import 'package:tokoma/components/default_Button.dart';
import 'package:tokoma/components/form_error.dart';
import 'package:tokoma/components/no_account_text.dart';
import 'package:tokoma/constant.dart';
import 'package:tokoma/size_config.dart';

class ForgotPassBody extends StatefulWidget {
  ForgotPassBody({Key? key}) : super(key: key);

  @override
  State<ForgotPassBody> createState() => _ForgotPassBodyState();
}

class _ForgotPassBodyState extends State<ForgotPassBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(28),
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Please enter email and we will send \n you a link to return to your acccount",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.1,
                  ),
                  ForgotPassForm(),
                ],
              ),
            )),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({Key? key}) : super(key: key);

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _Formkey = GlobalKey<FormState>();
  late String email;
  List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _Formkey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue.toString(),
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }

              return;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }

              return null;
            },
            decoration: const InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                Icons: "assets/icons/Mail.svg",
              ),
            ),
          ),
          SizedBox(
            height: getPropotionateScreenHeight(30),
          ),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          DefaultButton(
              text: "Continue",
              press: () {
                if (_Formkey.currentState!.validate()) {
                  _Formkey.currentState!.save();
                }
              }),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          NoAccountText()
        ],
      ),
    );
  }
}
