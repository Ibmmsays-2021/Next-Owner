import 'package:flutter/material.dart';
import 'package:next/Screens/approved.dart';
import 'package:next/Screens/hsitory.dart';
import 'package:next/Screens/new_playground.dart';

import 'package:next/Screens/playgrounds/playgrounds.dart';
import 'package:next/Screens/ProfilePage.dart';
import 'package:next/Screens/categories.dart';
import 'package:next/Screens/cutomer_drawer.dart';

import 'package:next/Screens/reservation.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<String> _appbarName = [
    'Playgrounds',
    'Pending',
    'New Playground',
    'Reservation',
    'History'
  ];
  List<Widget> _children = [
    Categories(),
    Approved(),
    Reservation(),
    ProfilePage(),
  ];
  //first Ware
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Image.asset('assets/images/icon.png',
                width: 40, height: 40, fit: BoxFit.contain),
            SizedBox(
              width: 20,
            ),
            Text(
              'Next',
              style: TextStyle(
                  color: Color(0xffffffff), fontWeight: FontWeight.bold),
            )
          ],
        ),
        backgroundColor: Color(0xff05131A),
        actions: <Widget>[],
      ),
      drawer: CustomDrawer(),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
            backgroundColor: Color(0xff05131A),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border_outlined),
            label: "Approve",
            backgroundColor: Color(0xff05131A),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pending_actions,
            ),
            label: "Reservation",
            backgroundColor: Color(0xff05131A),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
            backgroundColor: Color(0xff05131A),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
