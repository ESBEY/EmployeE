import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:employee/pages/home_employee.dart';
import 'package:employee/pages/home_employer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeDirector extends StatefulWidget {

  const HomeDirector({Key? key}) : super(key: key);

  @override
  _HomeDirectorState createState() => _HomeDirectorState();
}

class _HomeDirectorState extends State<HomeDirector> {

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('users').doc(user!.uid).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.data?.get("role")== "worker") {
            return Employee();
          } else {
            return Employer();
          }
        },
      ),
    );
  }
}