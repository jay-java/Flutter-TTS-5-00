import 'package:flutter/material.dart';
class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  final countries = ['INDIA','UK','US','CANADA','AUS','CHINA','RUSSIA'];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 250,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black,width: 2)
          ),
          child: DropdownButton(

            value: value,
            icon: Icon(Icons.arrow_drop_down,color: Colors.blue,),
            iconSize: 40,
            isExpanded: true,
            items: countries.map(dropdownItem).toList(), onChanged: (value) {
            setState(() {
              this.value = value;
            });
          },),
        ),
      ),
    );
  }
  DropdownMenuItem<String> dropdownItem(String county) => DropdownMenuItem(
      value: county,
      child: Text(county,style: TextStyle(fontSize: 20),));
}
