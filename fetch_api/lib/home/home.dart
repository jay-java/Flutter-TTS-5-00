import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final u = users[index];

          return ListTile(
            leading: Image.network(
              u['avatar_url'],
            ),
            title: Text(u['id'].toString()),
            subtitle: Text(u['login']),
            trailing: Text(u['type']),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.abc),
        onPressed: () {
          fetchData();
        },
      ),
    );
  }

  void fetchData() async {
    print('btn clicked');
    //1.variable to fetch url
    const url = 'https://api.github.com/users';
    //object to read data from URL
    final uri = Uri.parse(url);
    //from api URL we will get response data
    final response = await http.get(uri);
    //fetch object from response object
    final body = response.body;
    //from raw data-> json
    final json = jsonDecode(body);
    setState(() {
      users = json;
      print(users);
    });
    print('fetch users done');
  }
}
