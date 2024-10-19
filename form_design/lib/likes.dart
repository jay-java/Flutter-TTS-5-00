import 'package:flutter/material.dart';
class MyLikes extends StatelessWidget {
  const MyLikes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Likes',style: TextStyle(fontSize: 25,color: Colors.black),),
      ),
    );
  }
}
