// abstract class => (default function & abstract functions)
// default class  => (concrete class ) or default function



void main(){
}
//ال abstract class مينفعش اخد منه instance
abstract class Animal {
  int ? numberoflibs  ;
  void eat();
}
// Interface class => ال loin لازم يعدل علي كل حاجه فيه
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