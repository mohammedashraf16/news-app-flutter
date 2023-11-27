import 'package:untitled/person2.dart';

void main() {
  Person newbornPerson = Person(name: 'Alice', age: 0);
  Person personWithAge = Person(name: 'Bob', age: 25);

  print(
    'Newborn person: Name-${newbornPerson.name}, '
        'Age-${newbornPerson.age}',);
  print(
      'Person with age: Name-${personWithAge.name}, '
          'Age-${personWithAge.age}');
}
