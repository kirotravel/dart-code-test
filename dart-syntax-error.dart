//FIND 5 SYNTAX ERROR

class Person {
  String? name;
  int? age;
  Person(this.name, this.age);

  void greet() {
    print('Hello, my name is $name and I am $age years old');
  }
}

void main() {
  Person? person = new Person('Alice', 30);

  print(person.name?.length);

  person.greet();
}
