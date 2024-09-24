import 'dart:io';

void main(List<String> args) {
  try {
    print('enter a = ');
    int a = int.parse(stdin.readLineSync()!);
    print('enter b = ');
    int b = int.parse(stdin.readLineSync()!);
    int c = a ~/ b;
    print('c = $c');
    exit(12);
  } catch (e, a) {
    print(e);
    // print(a);
  } finally {
    print('this will executes everytime');
  }

  // on IntegerDivisionByZeroException {
  //   print('denominator should be greater than 0');
  // } on FormatException {
  //   print('denomitor should be neumeric value');
  // } on Exception {
  //   print('error');
  // }
}
