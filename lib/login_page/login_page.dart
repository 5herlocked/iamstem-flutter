import 'package:flutter/material.dart';

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

    return ;
  }
}