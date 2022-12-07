import 'package:denemeee/login.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(child: Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildIconButton(Icons.doorbell_outlined, 'duyurular', () {}),
                buildIconButton(Icons.schedule_rounded, 'Çalışma Saatlerim', () {}),
                buildIconButton(Icons.folder_open_rounded, 'Dökümanlarım', () {}),
              ],
            ),
            Text(''),
            Text(''),
            Text(''),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildIconButton(Icons.calendar_month_rounded, 'Planım', () {}),
                buildIconButton(Icons.sunny, 'İzin Günlerim', () {}),
                buildIconButton(Icons.attach_money_rounded, 'Maaşım', () {}),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyLogin()));
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.red,
              ),
              iconSize: 50,
            ),
            Text('Geri Dön',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Arial', fontSize: 15)),
          ])),
      backgroundColor: Colors.white10,
    ), onWillPop: () async => false);
  }

  Widget buildIconButton(IconData icon, String title, void Function()? action,) {
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
            TextStyle(color: Colors.white, fontFamily: 'Arial', fontSize: 15),
      ),
    ]);
  }
}
