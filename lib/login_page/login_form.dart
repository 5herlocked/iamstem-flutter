import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../decorations.dart';
import '../main.dart';
import '../app.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.transparent),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height / 1.1,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 10,
                      top: 10,
                      child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: Icon(
                          Icons.close,
                          size: 30,
                          color: Decorations.accentColour,
                        ),
                      ),
                    ),
                  ],
                ),
                height: 50,
                width: 50,
              ),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(
                        top: 30,
                        bottom: 20,
                      ),
                      child: Text(
                        "Welcome Back!",
                        style: Decorations.welcomeBack,
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Enter your Login Credentials",
                        style: Decorations.logIn,
                      ),
                      alignment: Alignment.center,
                    ),
                    MyLoginForm()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyLoginForm extends StatefulWidget {

  @override
  _MyLoginFormState createState() => _MyLoginFormState();
}

class _MyLoginFormState extends State<MyLoginForm> {
  final _formkey = GlobalKey<FormState>();

  final _email = TextEditingController();
  final _password = TextEditingController();

  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 20,
              right: 20,
              bottom: 10,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.alternate_email),
                fillColor: Colors.white,
                filled: true,
                labelText: "Email ID",
              ),
              controller: _email,
              enabled: true,
              cursorColor: Decorations.accentColour,
              validator: (input) => input!.isEmpty ? "* Required" : null,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 20,
              right: 20,
              bottom: 10,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: "Password",
              ),
              controller: _password,
              enabled: true,
              obscureText: true,
              // TODO: Change password requirements to whatever
              validator: (input) => input!.isEmpty ? "* Required" : null,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: _loading ?
              CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation(
                    Decorations.accentColour
                ),
              ) :
              Container(
                  child: TextButton(
                    onPressed: () => _initateLogin(),
                    child: Text("Login"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => Decorations.buttonColor
                      ),
                      foregroundColor: MaterialStateProperty.resolveWith(
                              (states) => Colors.white
                      ),
                    ),
                  )
              )
          )
        ],
      ),
    );
  }

  void _initateLogin() async {
    // Validating the login credentials with firebase auth
    var user;
        FirebaseAuth.instance.signInWithEmailAndPassword(email:_email.text,password:_password.text)
    .then((value) => {Navigator.popUntil(context, (route) => route.isFirst),
                       Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            settings: const RouteSettings(name: '/'),
            builder: (builder) => App(key: null,),
          )
      )});
  }
}
