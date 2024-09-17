class Data {
  Data() {
    print('defualt cons');
  }
  Data.namedCons(int i) {
    print(i);
  }
  void show() {
    print('show in data class');
  }

  static void call() {
    print('static in data class');
  }
}

void main(List<String> args) {
  Data d = new Data.namedCons(12);
  d.show();
  Data.call();
}
