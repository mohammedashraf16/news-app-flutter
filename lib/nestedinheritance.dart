void main(){
  GermanDogs germen = GermanDogs();
  germen.eat();

}
abstract class Animal {
  int ? numberoflibs  ;
  void eat();
}
class Loin implements Animal{
  @override
  void eat(){
    print('Loin is eating');
  }



  int? numberoflibs;

}
class Dog implements Animal{
  @override
  void eat(){
    print('Dog is eating');
  }

  int? numberoflibs;
}
class GermanDogs extends Dog{

}

