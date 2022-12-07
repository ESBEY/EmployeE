import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Profil Sayfası',
          style: TextStyle(fontSize: 50,color: Colors.red)
        ),
      ),
    );
  }

}