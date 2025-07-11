class A {
  a() {
    print('Im A');
  }
}

class B extends A {
  b() {
    print('Im B');
  }
}

class C extends B {
  c() {
    print('Im C');
  }
}

class D extends C {
  d() {
    print('Im D');
  }
}

void main() {
  D d = D(); // Creating an instance of D
  d.d();
  d.c();
  d.b();
  d.a();
}
