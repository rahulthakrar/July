class Student {
  var Name, Surname;
  static var College = 'Atmiya';

  Student(var Name, var Surname) {
    this.Name = Name;
    this.Surname = Surname;
  }

  void Display() {
    print('Your name is $Name');
    print('Your surname is $Surname');
    print('Your college name is $College');
  }

  static change() //static method declaration
  {
    College = 'Noble';
  }
}

void main() {
  var s1 = Student('a', 'a'); // object declaration trick 1
  Student s2 = Student("b", "b"); // object declaration trick 1
  var s3 = Student('c', 'c');
  Student.change();
  s1.Display();
  s2.Display();
  s3.Display();
}
