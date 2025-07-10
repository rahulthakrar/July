// student 1
class Emp {
  var name;
  var salary;
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

  print('Your name is ${e1.name}');
  print('Your salary is ${e1.salary}');
  print('Your name is ${e2.name}');
  print('Your salary is ${e2.salary}');
  print('Your name is ${e3.name}');
  print('Your salary is ${e3.salary}');
}
