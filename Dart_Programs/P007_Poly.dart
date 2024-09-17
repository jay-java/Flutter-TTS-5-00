class Parent {
  void showData(int id) {
    print('parent id : $id');
  }
}

class Child extends Parent {
  void showData(int id) {
    super.showData(23);
    print('child id : $id');
  }
}

void main(List<String> args) {
  Child c = new Child();
  c.showData(12);
}
