//FIND 3 LOGICAL ERROR
class Person {
  String? name;
  late int age; /* late for null safty*/

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void greet() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

void main() {
  List<Person> people = [
    Person('Alice', 30),
    Person('Bob', 25),
    Person('Charlie', 35),
    Person('Dave', -5)
  ];

  for (Person person in people) {
    if (person.age < 0) {
      print('Error: Age cannot be negative.');
    } /*age can not be zero*/else if (person.age == 0) {
      print('Error: Age cannot be zero.');
    } else {
      person.greet();
    }
  }

  for (Person person in people) {
    if (person.name == null) {
      print('Error: Name cannot be null.');
    } /*use may be enter empty string .it is not null but still empty*/else if (person.name!.isEmpty) {
      print('Error: Name cannot be empty.');
    } else {
      print('Person ${person.name} has a valid name.');
    }
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