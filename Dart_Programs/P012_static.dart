class abc {
  int? id;
  static String col = 'XYZ';
  static int i = 12;
  void fun() {
    i++;
    print('fun in abc class  : $i');
  }

  static void run() {
    print('run in abc class');
  }
}

void main(List<String> args) {
  abc a = abc();
  a.fun();
  abc.run();
}
