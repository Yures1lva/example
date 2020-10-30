import 'package:flutter/material.dart';
import 'package:exampleflutter/constants.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text("Nike esportes", style: titulo1),
        centerTitle: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: backgrounColor,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(),
          SingleChildScrollView(
            padding: EdgeInsets.only(
              top: 50.0,
              left: 40.0,
              right: 40.0,
            ),
            child: Column(
              children: <Widget>[],
            ),
          )
        ],
      ),
    );
  }
}
