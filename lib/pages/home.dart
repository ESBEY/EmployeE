// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:employee/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildIconButton(Icons.doorbell_outlined, 'Duyurular', () {},20),
                buildIconButton(Icons.schedule_rounded, 'Çalışma Saatlerim', () {},15),
                buildIconButton(Icons.folder_open_rounded, 'Dökümanlarım', () {},15),
              ],
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildIconButton(Icons.calendar_month_rounded, 'Planım', () {},20),
                buildIconButton(Icons.sunny, 'İzin Günlerim', () {},20),
                buildIconButton(Icons.attach_money_rounded, 'Maaşım', () {},20),
              ],
            ),
          ])),
      backgroundColor: Colors.black,
    );
  }

  Widget buildIconButton(IconData icon, String title, void Function()? action,double _fontSize) {
    return Column(children: [
      IconButton(
        icon: Icon(icon),
        color: Colors.red,
        iconSize: 50,
        onPressed:action,

      ),
      Text(
        title,
        style:
        TextStyle(color: Colors.white, fontFamily: 'Arial', fontSize: _fontSize),
      ),
    ]);
  }
}