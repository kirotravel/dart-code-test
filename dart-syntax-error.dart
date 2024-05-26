//FIND 5 SYNTAX ERROR

class Person {
  String? name;
  int? age;

  Person(String name, int/*missing ? to make it accept null value*/? age)/*missing braket*/ {
    this.age = age;
  }

  void greet() {
    print('Hello, my name is $name and I am $age years old'/*missing quote*/);
  }
}

void main() {
  Person? person = new Person('Alice', null);

  print(person.name!/*missing ! because ot may be null*/.length);

  person.greet();/*the most forgotten thing ;     ;)*/
}