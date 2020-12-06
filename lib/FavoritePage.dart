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
      appBar: buildAppBar(
        context,
        "Favoritos",
        Icon(
          Icons.favorite,
          color: iconColor,
        ),
      ),
    );
  }
}
