import 'package:flutter/material.dart';

class MyRange extends StatefulWidget {
  const MyRange({super.key});

  @override
  State<MyRange> createState() => _MyRangeState();
}

class _MyRangeState extends State<MyRange> {
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Range'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Text(_currentValue.toString(),style: TextStyle(fontSize: 25),),
            Slider(
              value: _currentValue,
              min: 0,
              max: 100,
              divisions: 200,
              activeColor: Colors.green,
              inactiveColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              },
            )
          ],
        ));
  }
}
