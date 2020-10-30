import 'package:flutter/material.dart';
import 'package:exampleflutter/listadeempresas.dart';
import 'package:exampleflutter/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BusqueEmpresas',
      theme: ThemeData(
        // We set Poppins as our default font
        primaryColor: primaryColor,
        accentColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Listadeempresas(),
    );
  }
}
