void main(List<String> args) {
  Map map = {1: 'dart', 2: 'c++', 'c': 'java'};

  Map map1 = Map();
  map1[1] = 'dart'; //entry
  map1[2] = 'c++';
  map1[3] = 'java';
  map1[4] = 'python';

  print(map1);
  map1.forEach((key, value) {
    print('key $key, value $value');
  });

  map1.update(1, (value) => 'xyz');
  print(map1);
}
