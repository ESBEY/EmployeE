// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:employee/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Employer extends StatefulWidget {

  const Employer({Key? key}) : super(key: key);

  @override
  _EmployerState createState() => _EmployerState();
}

class _EmployerState extends State<Employer> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'İşveren Sayfası',
          style: TextStyle(fontSize: 50,color: Colors.red)
        ),
      ),
    );
  }

}