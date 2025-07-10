// Difference between method and Constructor

class Student {
  Student() {
    print('I am student');
  }
  a() {
    print('A');
  }
}

void main() {
  var s1 = Student(); // This will call constructor
  s1.a(); // this will call method
}
