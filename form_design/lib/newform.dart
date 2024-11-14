import 'package:flutter/material.dart';
import 'package:form_design/secondpage.dart';

class MyNewForm extends StatefulWidget {
  const MyNewForm({super.key});

  @override
  State<MyNewForm> createState() => _MyNewFormState();
}

class _MyNewFormState extends State<MyNewForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    TextEditingController _nameController = TextEditingController();
    TextEditingController _contactController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('NewForm'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text('Form', style: TextStyle(fontSize: 30),),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                      labelText: 'Enter your name'
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        RegExp(r'^[a-zA-Z]+$').hasMatch(value!)) {
                      return 'enter correct name';
                    }
                    else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _contactController,
                  decoration: InputDecoration(
                      labelText: 'Enter your number'
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        RegExp(r'^(?:[+0]9)?[0-9]{10}$').hasMatch(value!)) {
                      return 'enter correct number';
                    }
                    else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      labelText: 'Enter your email'
                  ),
                  validator: (value) {
                    if (value!.isEmpty || RegExp(
                        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                        .hasMatch(value!)) {
                      return 'enter correct email';
                    }
                    else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _passController,
                  decoration: InputDecoration(
                      labelText: 'Enter your password'
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'enter correct password';
                    }
                    else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: () {
                  print('name : ${_nameController.text}');
                  print('contact : ${_contactController.text}');
                  print('email : ${_emailController.text}');
                  print('password : ${_passController.text}');
                  if (formKey.currentState!.validate()) {

                  }
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>
                        MySecondPage(name: _nameController.text,
                            conatct: _contactController.text,
                            email: _emailController.text,
                            pass: _passController.text),));
                }, child: Text('Click'))
              ],
            )),
      ),
    );
  }
}
