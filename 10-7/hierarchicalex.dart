class Bank {
  bank() {
    print('banking');
  }
}

class Current extends Bank {
  current() {
    print('current');
  }
}

class Savings extends Bank {
  savings() {
    print('savings');
  }
}

void main() {
  var c = Current();
  var s = Savings();

  c.bank();
  c.current();
  s.bank();
  s.savings();
}
