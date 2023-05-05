import 'package:flutter/material.dart';

class main_new extends StatelessWidget {
  const main_new({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Text("hi"),
    )
    );
  }
}



Container(
constraints: BoxConstraints.expand(width: 250.0,height: 56.0),
margin: EdgeInsets.only(left: 50.0,top: 100.0),