import 'package:flutter/material.dart';
class MyButtons extends StatefulWidget {
  const MyButtons({super.key});

  @override
  State<MyButtons> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 150,
            child: TextButton(onPressed: () {
              print('text button clicked');
            }, child: Text('TextButton',style: TextStyle(fontSize: 20),)),
          ),
          Container(
            height: 100,
            width: 150,
            child: OutlinedButton(onPressed: () {
              print('outlined button clicked');
            }, child: Text('Outlined',style: TextStyle(fontSize: 20),)),
          ),
          Container(
            height: 100,
            width: 150,
            child: ElevatedButton(onPressed: () {
              print('elevated button clicked');
            }, child: Text('Elevated',style: TextStyle(fontSize: 20),)),
          ),
        ],
      ),
    );
  }
}
