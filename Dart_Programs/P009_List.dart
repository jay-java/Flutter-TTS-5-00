void main(List<String> args) {
  // <generics>
  List list = [1, 2.34, false, 'a', 'dart', 1];
  print(list[0]);
  list.add(2345);
  print(list);
  list.remove(false);

  print(list);
  for (int i = 0; i < list.length; i++) {
    print('list by standard way :  ${list[i]}');
  }

  for (var i in list) {
    print('list by for in loop $i');
  }

  list.forEach((element) {
    print('list by for each loop : $element');
  });
}
