// Parameterized Constructor

class Emp {
  int id = 0;
  String name = '';

  Emp({var i, var n}) // curly braces means optional parameters
  {
    id = i;
    name = n;
  }

  display() {
    print('Employee name is $name and his salary is $id');
  }
}

void main() {
  Emp e1 = Emp(n: 'Rahul', i: 1000);
  Emp e2 = Emp(n: 'Rony', i: 2000);
  Emp e3 = Emp(n: 'Ram', i: 3000);

  e1.display();
  e2.display();
  e3.display();
}
