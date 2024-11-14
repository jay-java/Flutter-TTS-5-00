import 'package:flutter/material.dart';

class MySecondPage extends StatelessWidget {
  String name, conatct, email, pass;

  MySecondPage(
      {required this.name,
      required this.conatct,
      required this.email,
      required this.pass}) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Text('name : $name'),
            Text('contact : $conatct'),
            Text('email : $email'),
            Text('password : $pass'),
          ],
        ),
      ),
    );
  }
}
