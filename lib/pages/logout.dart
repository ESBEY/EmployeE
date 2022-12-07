import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Çıkış yapmak istiyor musun ?',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,

              ),
            ),
            SizedBox(height: 20,),
            FloatingActionButton(
              child: Icon(
                Icons.exit_to_app,
                color: Colors.black,
                size: 35,
              ),
              onPressed: () {FirebaseAuth.instance.signOut();},
              backgroundColor: Colors.red,
              splashColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }

}