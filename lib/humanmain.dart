import 'package:untitled/human.dart';

void main(){
  Human mohammd = Human();
  Human jaden = Human();
  String name = '   Mohamed';
  name
    ..trim()
    ..toUpperCase();
  print(name);
  print(Human.numberOfObjects);
  mohammd
    ..walk()
    ..toString();// Cascade Operator
}