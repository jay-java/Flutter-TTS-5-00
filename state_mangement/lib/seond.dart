import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mangement/first.dart';

import 'counter_provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}
int counter = 0;
class _SecondPageState extends State<SecondPage> {
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage(),));
            }, child: Text('First'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
       provier.counterIncrement();
      },child: Icon(Icons.add),),
    );
  }
}
