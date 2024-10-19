import 'package:flutter/material.dart';
class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Profile',style: TextStyle(fontSize: 25,color: Colors.black),),
      ),
    );
  }
}
