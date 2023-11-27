void main(){
  User user =User() ;
  // user.changeUserName= "mohammed ashraf";
  print(user.username);
  print(user.username);
}
class User {
  String username ="mohammed";
  // void set changeUserName(newname)=> this.username = newname;
  String get newname{
    if(username == "basel"){
      return "yes username = basel";
    }else{
      return "username!=basel";
    }
  }
}