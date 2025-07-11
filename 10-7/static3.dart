class MyColor {
  var color = 'White';
}

class MyColor2 extends MyColor {
  var color = 'Black';

  display() {
    print(color); // will print its own class variable
    print(super.color); // will print parent class variable
  }
}

void main() {
  var m2 = MyColor2();
  m2.display();
}
