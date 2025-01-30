import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mangement/counter_provider.dart';

import 'first.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<MyCounterProvider>(create: (context){
        return MyCounterProvider();
      })
    ],
    child: MaterialApp(
      home: FirstPage(),
    ),
  ));
}
