import 'dart:io';

void main(List<String> args) {
  print('hello first program');
  print('hello again');
  // byte,short,int,long-> int
  //float,double -> double
  //char,String -> String
  //boolean -> bool
  int i = 1;
  int j = 2;
  print(i + j);
  print(i - j);
  print(i * j);
  print('division ${i / j}');
  print(i % j);
  var i1 = 12;
  print(i1);
  print(i);
  double d = 3.14;
  print(d);
  String name = "dart";
  print(name);
  bool b = false;
  print(b);

  print('enter data : ');
  var data = stdin.readLineSync();
  print(data);

  print('enter numeric value : ');
  int a = int.parse(stdin.readLineSync()!);
  print('a = $a');
  print('type of a = ${a.runtimeType}');

  //to get data into single line
  // stdout.write(object);
}
