import 'package:flutter/material.dart';
class MyDecoration extends StatelessWidget {
  const MyDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decoration'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          // color: Colors.grey,
          decoration: BoxDecoration(
            color: Colors.grey,
            // borderRadius: BorderRadius.circular(125),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
            border: Border.all(
                color: Colors.blue,
            width: 3)
          ),
        ),
      ),
    );
  }
}
