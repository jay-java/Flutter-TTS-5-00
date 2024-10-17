import 'package:flutter/material.dart';
class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {

    int _value = 1;
    bool _isChecked = false;

    TextEditingController _userNameController = TextEditingController();
    TextEditingController _contactController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Form'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(child: Column(
          children: [
            TextFormField(
              controller: _userNameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2
                  )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.green,
                        width: 2
                    )
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: _contactController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Contact',
                suffixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.green,
                        width: 2
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.green,
                        width: 2
                    )
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.green,
                        width: 2
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.green,
                        width: 2
                    )
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: _passwordController,
              keyboardType: TextInputType.text,
              obscureText: true,
              obscuringCharacter: '@',
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.green,
                        width: 2
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.green,
                        width: 2
                    )
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Radio(value: _value, groupValue: _value, onChanged: (value) {
                  
                },),
                Text('Male')
              ],
            ),
            RadioListTile(value: _value, groupValue: _value, onChanged: (value) {
              
            },
              title: Text('Male'),
              activeColor: Colors.green,
            ),
            CheckboxListTile(value: _isChecked, onChanged: (value) {
              
            },
            title: Text('English'),
            activeColor: Colors.green,),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                print(_userNameController.text);
                print(_contactController.text);
                print(_emailController.text);
                print(_passwordController.text);
              }, child: Text('Register',style: TextStyle(fontSize: 20,color: Colors.white),),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.green)
              ),),
            )
          ],
        )),
      ),
    );
  }
}
