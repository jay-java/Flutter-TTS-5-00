import 'package:flutter/material.dart';

import 'drawer.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigationDrawer'),
        backgroundColor: Colors.green,
      ),
      drawer: MyNavigationDrawer(),
    );
  }
}
