void main(){
  //Polymorphism
  List<Animal> animals =[Lion() , Dog()];
  print(animals[0].numberoflips);
}
class Animal {
  int numberoflips =4;
  void eat(){
    print("eating");
  }

}
class Lion extends Animal{
  @override   //بتعدل علي ال method
  void eat(){
    print("lion eating");
  }
  void roar(){
    print('roaring');
  }


}
class Dog extends Animal {
  void park(){
    print('park');
  }


}