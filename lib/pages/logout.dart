import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Do You Want To Log Out?',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(3.0, 3.0),
                      blurRadius: 10.0,
                      color: Colors.redAccent,
                    ),
                  ]
              ),
            ),
            SizedBox(height: 20,),
            FloatingActionButton(
              child: Icon(
                Icons.exit_to_app,
                color: Colors.white,
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