import 'package:flutter/material.dart';
class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyFlutterApp',style: TextStyle(color: Colors.white,fontSize: 25),),
        backgroundColor: Colors.blue.shade500,
      ),
      body: Center(
        child: Container(
            height: 100,
            width: 200,
            color: Colors.grey,
            child: Center(child: Text('Hello User',style: TextStyle(fontSize: 25,color: Colors.black,backgroundColor: Colors.green),)))
      )
    );
  }
}
