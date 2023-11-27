//Create a class Book with
// three properties: name, author, and prize. Also, create a method called display,
// which prints out the values of the three properties




void main(){
  Book f1 =Book("mohammed", "ashraf");
  print(f1.FullName);
}
class Book {
  String ? _name;
  String ? _author;
  String ? prize ;
  void displaly(){
    print('Name:$_author');
    print('Prize:$_name');
    print('Author:$prize');
  }
  Book(this._name,this._author);
  String get FullName=> "$_name $_author";


}