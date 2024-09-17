class A {
  A() {
    print('default cons in A');
  }
  void classA() {
    print('class A function');
  }
}

class B extends A {
  B() {
    print('default cons in B');
  }
  void classB() {
    print('class B function');
  }
}

class C extends B {
  C() {
    print('default cons in C');
  }
  void classB() {
    print('class C function');
  }
}

class D extends A {
  void classD() {
    print('class D function');
  }
}

void main(List<String> args) {
  B b = new B();
  b.classA();
  b.classB();
}
