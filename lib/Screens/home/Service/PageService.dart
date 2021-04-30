import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'ServiceFormul.dart';

class Service extends StatefulWidget {
  Service({Key key}) : super(key: key);

  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buidAppBar("Connecter Service") ,
    body: Servicepage(), 
    );
  }
    AppBar buidAppBar(String title1) {
    return AppBar(
      title: Text(title1,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87, fontSize: 25)),
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
        onPressed: () {Navigator.of(context).pop();},
      ),
      actions: <Widget>[
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}