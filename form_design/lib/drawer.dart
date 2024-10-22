import 'package:flutter/material.dart';
import 'package:form_design/settings.dart';
class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            drawerHeader(context),
            drawerMenuItem(context)
          ],
        ),
      ),
    );
  }

  Widget drawerHeader(BuildContext context) => Container(
    color: Colors.blue,
    width: double.infinity,
    child: Column(
      children: [
        CircleAvatar(
          radius: 55,
          backgroundImage: AssetImage('assets/images/chair.png'),
        ),
        SizedBox(height: 10,),
        Text('User Name',style: TextStyle(fontSize: 30,color: Colors.white),),
        SizedBox(height: 10,),
        Text('user@gmail.com',style: TextStyle(fontSize: 20,color: Colors.white),)
      ],
    ),
  );

  Widget drawerMenuItem(BuildContext context) => Column(
    children: [
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Home'),
      ),
      ListTile(
        leading: Icon(Icons.notification_add),
        title: Text('Notification'),
      ),
      Divider(color: Colors.black38,),
      ListTile(
        leading: Icon(Icons.account_box_outlined),
        title: Text('Accounts'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings'),
        onTap: () {
          Navigator.pop(context);
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MySettings(),));
        },
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('Logout'),
      ),
    ],
  );
}
