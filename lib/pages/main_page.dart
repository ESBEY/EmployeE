import 'package:employee/pages/login.dart';
import 'package:employee/pages/home.dart';
import 'package:employee/pages/menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Menu();
          } else {
            return MyLogin();
          }
        },
      ),
    );
  }
}