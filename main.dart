import 'package:employe/menu.dart';
import 'package:flutter/material.dart';
import 'package:employe/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'login': (context) => MyLogin(),
      'menu':(context) => Menu(),
    },
  ));
}
