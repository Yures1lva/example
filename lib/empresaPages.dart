import 'package:exampleflutter/constants.dart';
import 'package:flutter/material.dart';

class EmpresaPage extends StatefulWidget {
  @override
  _EmpresaPageState createState() => _EmpresaPageState();
}

class _EmpresaPageState extends State<EmpresaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrounColor,
      appBar: buildAppBar(
        context,
        "Produtos",
        Icon(
          Icons.shopping_bag_outlined,
          color: iconColor,
        ),
      ),
      body: Container(),
    );
  }
}
