import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Stack'),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 300,
              width: 300,
              color: Colors.grey,
            ),
          ),
          Positioned(
            left: 50,
            top: 50,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          ),
          Positioned(
            top: 100,
            left: 100,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
