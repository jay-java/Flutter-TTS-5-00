import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        child: Container(
          height: 500,
          width: double.infinity,
          child: Column(
            children: [
              Text(
                'current date time : ${time}',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'current date : ${time.year} : ${time.month} : ${time.day}',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'current time : ${time.hour} : ${time.minute} : ${time.second}',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'formatted : ${DateFormat('Hms').format(time)}',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'formatted : ${DateFormat('jms').format(time)}',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'formatted : ${DateFormat('yMMMMd').format(time)}',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'formatted : ${DateFormat('QQQQ').format(time)}',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'formatted : ${DateFormat('EEEE').format(time)}',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'formatted : ${DateFormat('MMMM').format(time)}',
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text('Click'))
            ],
          ),
        ),
      ),
    );
  }
}
