import 'package:flutter/material.dart';

import 'drawer.dart';
import 'new_navigation_drawer.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              child: Image.asset(
                'assets/images/insta.jpeg',
              ),
            ),
            Container(
                padding: const EdgeInsets.all(8.0), child: Text('Instagram'))
          ],

        ),
      ),
      drawer: MyNavigationDrawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: GridView.count(
          padding: EdgeInsets.all(10),
          crossAxisCount: 2,
          children: [
            Card(
              child: Column(
                children: [
                  Container(
                    child: Image.asset('assets/images/person.png'),
                  ),
                  Text('Walking',style: TextStyle(fontSize: 25),),
                ],
              ),
            ),
          ],),
      ),
    );
  }
}
