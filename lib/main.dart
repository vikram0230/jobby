import 'package:flutter/material.dart';
import 'package:jobby/Screens/HomeScreen.dart';
import 'package:jobby/Screens/Signin_Screen.dart';
import 'package:jobby/Screens/Signup_Screen.dart';
import 'package:jobby/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SignupScreen.route,
      darkTheme: ThemeData(accentColor: darkGrey),
      theme: ThemeData(fontFamily: 'Montserrat'),
      routes: {
        SignupScreen.route : (context) => SignupScreen(),
        SigninScreen.route : (context) => SigninScreen(),
        HomeScreen.route : (context) => HomeScreen(),
      },
    );
  }
}


