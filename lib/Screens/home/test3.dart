import 'package:flutter/material.dart';

import 'options.dart';
class DetailsScreen extends StatelessWidget {
  final Options option; 
  const DetailsScreen({Key key,this.option}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("hena khedam a ayoub"),
      ),

    );
  }
}