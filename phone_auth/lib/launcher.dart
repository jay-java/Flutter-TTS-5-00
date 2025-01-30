import 'package:flutter/material.dart';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart' as launcher;

class MyLauncher extends StatefulWidget {
  const MyLauncher({super.key});

  @override
  State<MyLauncher> createState() => _MyLauncherState();
}

class _MyLauncherState extends State<MyLauncher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Launchers'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            launcherButtons(
              title: 'Phone Launcher',
              icon: Icons.phone,
              onPressed: () {
                Uri uri = Uri.parse('tel:+919662261373');
                launcher.launchUrl(uri);
              },
            ),
            launcherButtons(
              title: 'Lunach URL',
              icon: Icons.language,
              onPressed: () {
                launcher.launchUrl(Uri.parse('https://pub.dev/'));
              },
            ),
            launcherButtons(
              title: 'Launch Email',
              icon: Icons.email,
              onPressed: () {
                Uri uri = Uri.parse('mailto:');
                launcher.launchUrl(uri);
              },
            ),
            launcherButtons(
              title: 'Launch SMS',
              icon: Icons.message,
              onPressed: () {
                launcher.launchUrl(
                  Uri.parse(
                      'sms:9662261373${Platform.isAndroid ? '?' : '&'}body=hello this msg from flutter'),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget launcherButtons(
      {required String title,
      required IconData icon,
      required Function() onPressed}) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 20),
              )
            ],
          )),
    );
  }
}
