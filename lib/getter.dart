void main(){
  NoteBook nb =NoteBook("Dell", '500');
  print(nb.name);
  print(nb.prize);
}
class NoteBook{
  String? _name;
  String? _prize ;
  NoteBook(this._name,this._prize);
  String get name{
    return 'Name :$_name';

  }
  String get prize {
    return "prize: $_prize";

  }
}