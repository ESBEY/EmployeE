// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:employe/login.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {

  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
            SizedBox(height: 100,),
            IconButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>MyLogin()));}, icon: Icon(Icons.arrow_back, color: Colors.red,),iconSize: 50,),
            Text(
              'Geri Dön',
              style: TextStyle(color: Colors.white,fontFamily: 'Arial',fontSize: 15)
            ),
        ]
            )



        ),
      backgroundColor: Colors.white10,
      

      );
  }
}
