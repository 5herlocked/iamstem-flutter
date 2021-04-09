import 'package:flutter/material.dart';
import 'package:i_am_stem/decorations.dart';

import 'login_form.dart';
import 'register_form.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    void createLoginForm() {
      showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          isDismissible: false,
          builder: (builder) => LoginForm(),
      );
    }

    void createRegisterForm() {
      showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          isDismissible: false,
          builder: (builder) => RegisterForm(),
      );
    }

    return Container(
      decoration: BoxDecoration(
        gradient: Decorations.backgroundGradient,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "I AM STEM",
                style: Decorations.splashScreen,
              ),
              alignment: Alignment.center,
            ),
            Padding(
              child: Container(
                child: ElevatedButton(
                  onPressed: () {  },
                  child: Text(

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}