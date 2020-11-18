import 'package:flutter/material.dart';

import 'constants.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: 20,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Favoritos",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: iconColor,
            ),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
