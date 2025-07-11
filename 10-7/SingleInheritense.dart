// Single Inheritanse

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

void main() {
  B b = B();
  b.b();
  b.a();
}
