import 'package:untitled/task4.dart';

class Person {
  //Global variable => Class
  //Local variable => function , parameter

  String name = ""; // Global variable
  String age = "";
  String city = "";
  String nameStreet = "";

//constructor
//   1- function
//   2- no return type
//   3- className
//   4- called when take an object
//   5- body is optional
// className(){}
  Person({
    required this.name,
    required this.age,
    required this.city,
    required this.nameStreet,

  })  {
    print('print new object');
    printData();
  }
  Person.female({
    required this.name,
    required this.age,
    required this.city,
    required this.nameStreet,


}){
    print('print new object');
    printData();
  }

  Person.male({
    required this.name,
    required this.age,
    required this.city,
    required this.nameStreet,
  }){
    print('print new object');
    printData();
  }
  void testVariables(String name){
    //this => Global variables
     this.name = name;
     //this =>global variables  
  }


  void testLocalVariables(String name3){
    String name2 ="Ali";
    print(name2);
    print(name3);
    int count = 0 ;
    count++;
    print(count);
  }
}


 void printData() {
    print('---------------------------');
    

}
// لون Global variable burble
// لون Local variable white
//named constructor => class name . name()



