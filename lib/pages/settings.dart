import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
            'Settings Page',
            style: TextStyle(fontSize: 50,color: Colors.red)
        ),
      ),
    );
  }

}