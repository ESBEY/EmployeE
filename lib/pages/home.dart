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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            IconButton(icon: Icon(Icons.schedule_rounded),color: Colors.red,iconSize: 50, onPressed: (){},),
           Text(
             'Çalışma Saatlerim',
             style: TextStyle(color: Colors.white,fontFamily: 'Arial',fontSize: 15),
             

           ),
            Text(
                ''
            ),
            Text(
                ''
            ),
            IconButton(icon: Icon(Icons.folder_open_rounded), onPressed: (){},color:Colors.red,iconSize: 50,),
            Text(
              'Dökümanlarım',
              style: TextStyle(color: Colors.white,fontFamily: 'Arial',fontSize: 15),

            ),
        ]
            )



        ),
      backgroundColor: Colors.white10,
      

      );
  }
}