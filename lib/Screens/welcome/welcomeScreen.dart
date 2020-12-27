import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/login/loginSecreen.dart';
import 'package:flutter_app/Screens/signUp/signUp.dart';
import 'package:flutter_app/Shared/components/components.dart';

class wlecomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: (Column(
          children: [
            SizedBox(
              height: 50,
            ),
            defaultButton(
              text: 'Login',
              function: () {
                navigateTo(context, loginScreen());
              },
            ),
            SizedBox(
              height: 50,
            ),
            defaultButton(
              text: 'SignUp',
              function: () {
                navigateTo(context, signupScreen());
              },
              toUpper: true,
            ),
          ],
        )),
      ),
    );
  }
}
