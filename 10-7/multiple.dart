//multiple inheritance

class A {
  a() {
    print('Im A');
  }
}

class B {
  b() {
    print('Im B');
  }
}

class C implements A, B {
  c() {
    print('C called');
  }

  a() {
    print('A called');
  }

  b() {
    print('B called');
  }
}

void main() {
  var c = C();
  c.a();
  c.b();
  c.c();
}
