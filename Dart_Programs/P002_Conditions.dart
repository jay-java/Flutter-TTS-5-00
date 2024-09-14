import 'dart:io';

void main(List<String> args) {
  print('enter a = ');
  int a = int.parse(stdin.readLineSync()!);
  print('enter b = ');
  int b = int.parse(stdin.readLineSync()!);

  if (a > b) {
    print('a is greater than b');
  } else {
    print('b is greater than a');
  }

  print('enter age = ');
  int age = int.parse(stdin.readLineSync()!);

  if (age > 18) {
    if (age < 55) {
      print('You are eligible');
    } else {
      print('age is greater than 18 but not less than 55');
    }
  } else {
    print('age is less than 18');
  }
}
