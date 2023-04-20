import 'package:flutter/material.dart';
// import 'package:flutter_auth/constants.dart';
import '../constants.dart';
import 'package:flutter_complete_guide/constants.dart';


class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  // final Function? press;
  final Function press;

  const AlreadyHaveAnAccountCheck({
    key,
    @required this.login = true,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don’t have an Account ? " : "Already have an Account ? ",
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press as void Function(),
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: const TextStyle(
              // color: kPrimaryColor,
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
