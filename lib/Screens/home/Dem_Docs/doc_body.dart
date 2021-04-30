import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import '../Service/PageService.dart';
import 'doc.dart';
class Document extends StatefulWidget {
  Document({Key key}) : super(key: key);

  @override
  _DocumentState createState() => _DocumentState();
}

class _DocumentState extends State<Document> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: buidAppBar("Demander Documents") ,
    body: Docs(), 
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