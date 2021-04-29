import 'package:flutter/material.dart';
import 'package:i_am_stem/decorations.dart';

import 'login_form.dart';
import 'register_form.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "I AM STEM",
                style: Decorations.splashScreen,
              ),
              alignment: Alignment.center,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05,
                left: 40,
                right: 40,
              ),
              child: Container(
                child: ElevatedButton.icon(
                  autofocus: false,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Decorations.buttonColor
                    ),
                  ),
                  icon: Icon(Icons.login),
                  label: Text(
                    "Login",
                  ),
                  onPressed: createLoginForm,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Decorations.buttonColor
                    ),
                  ),
                  icon: Icon(Icons.app_registration),
                  label: Text("Register"),
                  onPressed: createRegisterForm,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
