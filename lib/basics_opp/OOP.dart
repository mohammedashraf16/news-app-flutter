import 'package:untitled/Person.dart';

void main() {
  Person person1 = Person(
    name: "mohammed",
    age: "20",
    city: "Mansoura",
    nameStreet: "Elgalaa",
  );
  Person Person2 = Person.female(
    name: "norahn",
    age: "20",
    city: "Giza",
    nameStreet: "Elharam",
  );
  Person Person3 = Person.male(
    name: "khaled",
    age: "22",
    city: "cairo",
    nameStreet: "Eldoky",
  );

  // person1.name="ahmed";
  // person1.age="20";
  // person1.adress="mansoura";
  // person1.printData();
}
