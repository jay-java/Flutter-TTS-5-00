import 'package:flutter/material.dart';
class MySettings extends StatelessWidget {
  const MySettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('Settings',style: TextStyle(fontSize: 25,color: Colors.black),),
      ),
    );
  }
}
