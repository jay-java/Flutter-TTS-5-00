import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mangement/seond.dart';

import 'counter_provider.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}
// int counter = 0;
class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    MyCounterProvider provier = Provider.of<MyCounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Text(provier.counter.toString(),style: TextStyle(fontSize: 40),),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(),));
            }, child: Text('Second'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        provier.counterIncrement();
      },child: Icon(Icons.add),),
    );
  }
}
