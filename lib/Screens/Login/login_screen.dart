import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestion_docs_fpo/Screens/Login/Components/body.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Body(),
    );
  }
}


