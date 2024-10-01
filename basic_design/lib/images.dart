import 'package:flutter/material.dart';
class MyImages extends StatelessWidget {
  const MyImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyImages'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              color: Colors.red,
              child: Image.asset('assets/images/shirt.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/shirt.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
