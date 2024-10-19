import 'package:flutter/material.dart';
import 'package:form_design/home.dart';
import 'package:form_design/likes.dart';
import 'package:form_design/profile.dart';
import 'package:form_design/settings.dart';

class MyBottomNavigationbar extends StatefulWidget {
  const MyBottomNavigationbar({super.key});

  @override
  State<MyBottomNavigationbar> createState() => _MyBottomNavigationbarState();
}

class _MyBottomNavigationbarState extends State<MyBottomNavigationbar> {

  int myIndex = 0;

  // List<Widget> pageText = [
  //   Text('Home',style:TextStyle(fontSize: 25,color: Colors.black)),
  //   Text('Profile',style:TextStyle(fontSize: 25,color: Colors.black)),
  //   Text('Likes',style:TextStyle(fontSize: 25,color: Colors.black)),
  //   Text('Settings',style:TextStyle(fontSize: 25,color: Colors.black)),
  // ];

  List<Widget> pageText = [
    MyHome(),
    MyProfile(),
    MyLikes(),
    MySettings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigation'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: pageText[myIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
         currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
        backgroundColor: Colors.grey),
        BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken_outlined),
            label: 'Likes',
            backgroundColor: Colors.red),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.yellow),
      ],
      showUnselectedLabels: true,
        // showSelectedLabels: false,
      ),
    );
  }
}
