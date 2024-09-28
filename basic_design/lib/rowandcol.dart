import 'package:flutter/material.dart';
class MyRowAndCol extends StatelessWidget {
  const MyRowAndCol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row And Col'),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                    child: Text('First',style: TextStyle(fontSize: 25,color: Colors.black),)),
                Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                    child: Text('First',style: TextStyle(fontSize: 25,color: Colors.black),)),
                Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                    child: Text('First',style: TextStyle(fontSize: 25,color: Colors.black),)),
              ],

            ),
            Container(
              color: Colors.yellow,
                height: 100,
                width: 100,
                child: Text('First',style: TextStyle(fontSize: 25,color: Colors.black),)),
            Container(
                height: 100,
                width: 100,
                child: Text('First',style: TextStyle(fontSize: 25,color: Colors.black),)),
            Container(
                height: 100,
                width: 100,
                child: Text('First',style: TextStyle(fontSize: 25,color: Colors.black),)),
            Text('Second',style: TextStyle(fontSize: 25,color: Colors.black),),
            Text('Third',style: TextStyle(fontSize: 25,color: Colors.black),),
            Text('Fourth',style: TextStyle(fontSize: 25,color: Colors.black),),
            Text('Fifth',style: TextStyle(fontSize: 25,color: Colors.black),),
            Text('Sixth',style: TextStyle(fontSize: 25,color: Colors.black),),
            Text('Seventh',style: TextStyle(fontSize: 25,color: Colors.black),),
          ],
        ),
      ),
    );
  }
}
