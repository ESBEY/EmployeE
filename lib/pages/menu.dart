// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:employee/pages/logout.dart';
import 'package:employee/pages/home.dart';
import 'package:employee/pages/profile.dart';
import 'package:employee/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _pages = [
    Home(),
    Profile(),
    Settings(),
    Logout(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 10,
            onTabChange: _navigateBottomBar,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.account_circle,
                text: 'Profile',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
              GButton(
                icon: Icons.exit_to_app,
                text: 'Sign Out',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
