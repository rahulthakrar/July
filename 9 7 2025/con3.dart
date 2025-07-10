//More than one Constructors

class Emp {
  int salary = 0;
  String name = '';

  Emp({var s, var n}) {
    salary = s;
    name = n;
  }
  Emp.a({var s}) {
    salary = s;
  }
  Emp.b({var n}) {
    name = n;
  }

  display() {
    print('Employee name is $name and his salary is $salary');
  }
}

void main() {
  Emp e1 = Emp(n: 'Rahul', s: 1000);
  Emp e2 = Emp(n: 'Rony', s: 2000);
  Emp e3 = Emp(n: 'Ram', s: 3000);

  e1.display();
  e2.display();
  e3.display();
}
