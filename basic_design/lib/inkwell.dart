import 'package:flutter/material.dart';
class MyInkWell extends StatelessWidget {
  const MyInkWell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: InkWell(
            onTap: () {
              print('hello user clickeed');
            },
            child: Text('Hello User',style: TextStyle(fontSize: 25),)),
      ),
    );
  }
}
