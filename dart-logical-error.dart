//FIND 3 LOGICAL ERROR
class Person {
  String name;
  int age;

  Person({required this.name, required this.age}) {
    if (age < 0) {
      throw ArgumentError('Age cannot be negative.');
    }
  }

  void greet() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

void main() {
  List<Person> people = [
    Person(name: 'Alice', age: 30),
    Person(name: 'Bob', age: 25),
    Person(name: 'Charlie', age: 35),
    Person(name: 'Dave', age: -5), // This will throw an error
  ];

  for (Person person in people) {
    person.greet();
  }

  Person oldestPerson = people[0];
  for (Person person in people) {
    if (person.age > oldestPerson.age) {
      oldestPerson = person;
    }
  }
  print(
      'The oldest person is ${oldestPerson.name} with ${oldestPerson.age} years.');
}

