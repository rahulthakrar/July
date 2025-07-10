// student 2
class Emp {
  var name;
  var salary;

  display() {
    print('Your name is $name');
    print('Your salary is $salary');
  }
}

void main() {
  Emp e1 = Emp();
  Emp e2 = Emp();
  Emp e3 = Emp();

  e1.name = 'Rahul';
  e1.salary = 1000;

  e2.name = 'Rony';
  e2.salary = 2000;

  e3.name = 'Rohan';
  e3.salary = 3000;

  e1.display();
  e2.display();
  e3.display();
}
