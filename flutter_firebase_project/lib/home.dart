import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_project/login.dart';
import 'package:flutter_firebase_project/user_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  List<String> usersList = [];
  String? id;

  Future getDocuments() async {
    await FirebaseFirestore.instance
        .collection('users')
        .get()
        .then((snapShot) => snapShot.docs.forEach((user) {
              print(user.reference);
              usersList.add(user.reference.id);
              // id = usersList.elementAt(1).toString();
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Signed in as : ${user.email}',
              style: TextStyle(fontSize: 25),
            ),
            Expanded(
                child: FutureBuilder(
              future: getDocuments(),
              builder: (context, snapshot) {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        usersList[index],
                        style: TextStyle(fontSize: 20),
                      ),
                    );
                  },
                  itemCount: usersList.length,
                );
              },
            )),
            MaterialButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ));
              },
              child: Text(
                'Signout',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
