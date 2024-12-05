import 'package:flutter/material.dart';

class MyDateTime extends StatefulWidget {
  const MyDateTime({super.key});

  @override
  State<MyDateTime> createState() => _MyDateTimeState();
}

class _MyDateTimeState extends State<MyDateTime> {
  @override
  Widget build(BuildContext context) {

    var time = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: Text("DateTime"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('date time : $time'),
      ),
    );
  }
}
