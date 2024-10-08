import 'package:flutter/material.dart';
class MyListView extends StatelessWidget {
  const MyListView({super.key});

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


    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
        backgroundColor: Colors.blue.shade400,
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Image.asset('assets/images/${img_list[index]}')
        );
      }, separatorBuilder: (context, index) {
        return Divider(height: 5,
        thickness: 5,);
      }, itemCount: img_list.length)
      );
  }
}
