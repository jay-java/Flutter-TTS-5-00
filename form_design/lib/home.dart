import 'package:flutter/material.dart';
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Home',style: TextStyle(fontSize: 25,color: Colors.black),),
            ElevatedButton(onPressed: () {
              
            }, child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
