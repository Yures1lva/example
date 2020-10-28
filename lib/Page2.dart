import 'package:flutter/material.dart';
import 'package:exampleflutter/search_page.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbfd7ea),
      appBar: AppBar(
        title: Text(
          "Nike esportes",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xff0a8754),
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
