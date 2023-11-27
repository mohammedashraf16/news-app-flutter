void main(){
  Phone phone1 =Phone.android(name: "", price: 15);
}

class Phone{
  //Encapsulation => Variables Private + Function Public
  String name ="";
  String _os = "";
  int _price = 0;
  Phone.android({
    required this.name,
    required int price,
  }){
    _price=price;
    _os = "Android";
  }
  Phone.iOS({
    required this.name,
    required int price,
  }){
    _price=price;
    _os = "iOS";
  }
  String getOperatingSystem(){
    return _os;
  }


}
