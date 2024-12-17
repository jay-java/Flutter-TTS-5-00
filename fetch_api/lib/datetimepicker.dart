import 'package:flutter/material.dart';

class MyDateTimePicker extends StatefulWidget {
  const MyDateTimePicker({super.key});

  @override
  State<MyDateTimePicker> createState() => _MyDateTimePickerState();
}

class _MyDateTimePickerState extends State<MyDateTimePicker> {
  DateTime date = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime(2025))
        .then(
      (value) {
        setState(() {
          date = value!;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyDateTimePicker'),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Date And Time'),
            Container(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  _showDatePicker();
                },
                child: Text('Pick Date')),
            Container(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? time = await showTimePicker(
                      context: context, initialTime: TimeOfDay.now());

                  if (time != null) {
                    print('time : ${time.hour}:${time.minute}');
                  }
                },
                child: Text('Select Time'))
          ],
        )),
      ),
    );
  }
}
