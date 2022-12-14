import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Ayarlar Sayfası',
          style: TextStyle(fontSize: 50,color: Colors.red)
        ),
      ),
    );
  }

}