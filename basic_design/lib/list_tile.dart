import 'package:flutter/material.dart';
class MyListTile extends StatelessWidget {
  const MyListTile({super.key});

  @override
  Widget build(BuildContext context) {
    var img_list = [
      'chair.png',
      'dell.png',
      'formal shoes.png',
      'loafers.jpg',
      'moto.png',
      'shirt.jpg',
      'shoes.png',
      'tshirt.png'
    ];
    var img_name = [
      'chair',
      'dell',
      'formal shoes',
      'loafers',
      'moto',
      'shirt',
      'shoes',
      'tshirt'
    ];
    var img_desc = [
      'chair data',
      'dell data',
      'formal shoes data',
      'loafers data',
      'moto data',
      'shirt data',
      'shoes data',
      'tshirt data'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile'),
        backgroundColor: Colors.blue.shade400,
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/${img_list[index]}'),
          ),
          title: Text('${img_name[index]}',style: TextStyle(fontSize: 25),),
          subtitle: Text('${img_desc[index]}',style: TextStyle(fontSize: 20),),
          trailing: Icon(Icons.delete),
        );
      }, separatorBuilder: (context, index) {
        return Divider(height: 5,
          thickness: 5,);
      }, itemCount: img_list.length),
    );
  }
}
