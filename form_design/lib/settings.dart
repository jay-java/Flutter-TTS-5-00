import 'package:flutter/material.dart';
class MySettings extends StatelessWidget {
  const MySettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Settings',style: TextStyle(fontSize: 25,color: Colors.black),),
      ),
    );
  }
}
