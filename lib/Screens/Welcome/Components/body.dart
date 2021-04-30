import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gestion_docs_fpo/Common_Compenents/rounded_button.dart';
import 'package:gestion_docs_fpo/Screens/Login/login_screen.dart';
import 'package:gestion_docs_fpo/Screens/Welcome/Components/background.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'BIENVENUE EN FPODOCS',
            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20, color: Colors.black54),
          ),
          SizedBox(height: size.height * 0.02),
          SvgPicture.asset("assets/icons/docs.svg", height: size.height * 0.4),
          SizedBox(height: size.height * 0.05),
          RoundedButton(
              text: 'LOGIN',
              color: kPrimaryColor,
              textColor: Colors.white,
              onPressed: () => Navigator.of(context).pushNamed("Login")
              //_onLoginButtonPressed(context)
              ),
          RoundedButton(
            text: 'J\'ai pas de compte',
            color: kPrimaryLightColor,
            textColor: Colors.black,
            onPressed: () {
              Navigator.of(context)
                      .pushNamed("formulaire");

            },
          ),
        ],
      ),
    ));
  }

  _onLoginButtonPressed(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) {
              return LoginScreen();
            }
        )
    );
  }
}
