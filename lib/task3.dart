void main(){
  //- using dart remove spaces in this string " Ah med"
  String name = "Ah med";
  name = name.replaceAll(" ", "");
  print(name);

  //- using dart capitalize this string "hello".
  String nameOne="hello";
  print(nameOne.toUpperCase());


  //- using dart reverse this word "Hello".
  String nameTwo = "Hello";
  String reverse= nameTwo.split("").reversed.join("");
  print(reverse);
  //////////////////////////
  List <String> names=["a","h","m","e","d"];
  print(names.reversed.join(""));



  //using dart revers this word "madam" and check if it is palindrome or not
  String nameTree ="madam";
  String reverseName =nameTree.split("").reversed.join("");
  print('original word : $nameTree');
  print('Reversed Word : $reverseName');
  if(nameTree==reverseName){
    print('the word is palindrome');
  }else
    {
      print('the word is not palindrome');
    }



  /*
  list names = [ "Moaz", "Ahmed", "Mohamed"]
- print index 2.
- remove index 1.
- revers list and print it.
- add to the list "Ali"
   */
  List <String> namesList =[ "Moaz", "Ahmed", "Mohamed"];
  print(namesList.elementAt(2));
  print(namesList.removeAt(1));
  print(namesList.reversed.toList());
  namesList.add("Ali");
  print(namesList);


  //- using loops print all even numbers from 1 to 10
 for(int numOne =2; numOne<=10;numOne+=2){
   print(numOne);
  }

}
