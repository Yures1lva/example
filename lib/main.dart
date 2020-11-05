import 'package:exampleflutter/loginPage.dart';
import 'package:flutter/material.dart';
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
        secondaryHeaderColor: Colors.black,
        primaryColor: primaryColor,
        accentColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
