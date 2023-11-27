

void main(){
  Samsung s20 = Samsung() ;
  s20.screen="6.4";
  s20.cpu="snapdragon 870";
  s20.camera="20 megapixel";
  s20.memory="6.4";
  print(s20.screen);
  print(s20.cpu);
  print(s20.camera);
  print(s20.memory);
  print(s20.brand);
  s20.printMainMobile("S20");
  print('================================');
  Realme x7pro = Realme();
  x7pro.camera ="12 megapixel";
  x7pro.cpu ="p12";
  print(x7pro.camera);
  print(x7pro.cpu);
  print(x7pro.brand);
  x7pro.printMainMobile("realme x7pro");

}
class Mobile{
  String? screen ;
  String? camera;
  String? cpu;
  String? memory;
  void printMainMobile(name){
    print('Mobile $name');
  }

}
class  Samsung  extends Mobile{
  String brand ="samsung ";


}
class  Realme  extends Mobile{
  String brand ="realme";


}