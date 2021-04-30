

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gestion_docs_fpo/Screens/home/body.dart';

import '../../constants.dart';

class HomePage extends StatelessWidget {
  String title1 = "Accueil";
  GlobalKey<ScaffoldState> scaffoldkey= new GlobalKey<ScaffoldState>() ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: buildAppBar(title1),
      drawer: buildDraWer(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(title1) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(title1,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87, fontSize: 25)),
      leading: IconButton(
        icon: Icon(Icons.menu, color:Colors.black),
        // SvgPicture.asset("assets/icons/back_arrow.svg"),
        onPressed: () {scaffoldkey.currentState.openDrawer();},
      ),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.home),color:Colors.black, onPressed: () {  })
        // SizedBox(width: kDefaultPaddin / 2), onPressed: () {  },
      ],
    );
  }
}
Drawer buildDraWer(context){
  return Drawer(
    child: Column(children: [
      UserAccountsDrawerHeader(
       accountName: Text("Azzaoui"),
       accountEmail: Text("accountEmail@"),
       currentAccountPicture:CircleAvatar(backgroundColor: Colors.white,
                                          child:Icon(Icons.person,size: 50 )
          ),
       ),
       ListTile(
         title:Text("Home page"),
         leading: Icon(Icons.home),
         onTap: (){Navigator.of(context).pushNamed("Homepage");},
       ),
       
       ListTile(
         title:Text("Demander Documents"),
         leading: Icon(Icons.description_rounded),
         onTap: (){Navigator.of(context).pushNamed("document");},
       ),
       ListTile(
         title:Text("Service"),
         leading: Icon(Icons.miscellaneous_services_rounded),
         onTap: (){Navigator.of(context).pushNamed("service");},
       ),
       ListTile(
         title:Text("help"),
         leading: Icon(Icons.help),
         onTap: (){},
       ),
       ListTile(
         title:Text("Déconnecté"),
         leading: Icon(Icons.exit_to_app_rounded),
         onTap: (){Navigator.of(context).pushReplacementNamed("Login");},
       ),

    ],),
    );
}
