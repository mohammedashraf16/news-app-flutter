// ignore_for_file: avoid_types_as_parameter_names

void main(){
  User user = User('mohammed',"01559116720");
    //..name="Mohammed"..phone="01559116720";//Cascade operator
  print(user.name);
  print(user.phone);

}
class User {
  String? name ;
  String? phone;
  User(this.name,this.phone);
}
