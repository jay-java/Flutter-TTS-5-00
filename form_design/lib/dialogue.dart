import 'package:flutter/material.dart';
class MyDialogue extends StatefulWidget {
  const MyDialogue({super.key});

  @override
  State<MyDialogue> createState() => _MyDialogueState();
}
class _MyDialogueState extends State<MyDialogue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialogue'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(onPressed: () {
            showDialog(context: context, builder: (context) {
              return AlertDialog(
                title: Text('Are you sure ?'),
                actions: [
                  TextButton(onPressed: () {
                    Navigator.pop(context);
                  }, child: Text('No')),
                  TextButton(onPressed: () {
                    
                  }, child: Text('YES'))
                ],
                
                
                
                // title: Text('Success'),
                // actions: [
                //   TextButton(onPressed: () {
                //     Navigator.pop(context);
                //   }, child: Text('OK'))
                // ],
              );
            },);
          }, child: Text('Click to open dialogue')),
        ),
      ),
    );
  }
}
