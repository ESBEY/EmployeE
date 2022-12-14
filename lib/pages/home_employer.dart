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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildIconButton(Icons.speaker_notes, 'Duyuru Yap', () {},20),
            buildIconButton(Icons.more_time, 'Saat Ayarla', () {},15),
            buildIconButton(Icons.badge, 'İşçiler', () {},15),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildIconButton(Icons.event, 'Plan', () {},20),
            buildIconButton(Icons.light_mode, 'İzin Günleri', () {},20),

          ],
        ),
      ])),
      backgroundColor: Colors.black,
    );
  }

  Widget buildIconButton(
      IconData icon, String title, void Function()? action, double _fontSize) {
    return Column(children: [
      IconButton(
        icon: Icon(icon),
        color: Colors.red,
        iconSize: 50,
        onPressed: action,
      ),
      Text(
        title,
        style: TextStyle(
            color: Colors.white, fontFamily: 'Arial', fontSize: _fontSize),
      ),
    ]);
  }
}
