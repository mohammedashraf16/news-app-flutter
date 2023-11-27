void main(){
 // Define a variable originalNumber as a double with the value 7.8. Then, perform the following conversions:
  double originalNumber = 7.8 ;
  //Convert originalNumber to an integer and store it in a variable called integerNumber
 int integerNumber=(originalNumber.toInt());
  print("this is integer : $integerNumber");

  //Convert originalNumber to a string and store it in a variable called stringNumber
  String stringNumber = (originalNumber.toString());
  print("this is string : $stringNumber");
  //Print out the values of integerNumber and stringNumber after the conversions.
  // 1- this is integer : 7.8
  // 2- this is string : 7.8


  calculateArea(width: 10 ,height: 20);
  printUserData(firstName: "Mohammed",lastName: "Ashraf",age: 20);

}

// Create a function named "calculateArea" that calculates the area of a rectangle.
// The function should take two parameters: "width" of type double and "height" of type double.
// It should return the calculated area as a double.
void calculateArea({required double width,required double height}) {
  print(width * height);

}


//Create function named printUserData that takes three parameters:
// firstName (of type String and make it required parameter),
// lastName (of type String and make it optional parameter),
// and age (of type int). The function should print out the person's full name along with their age.

void printUserData({required String firstName , String lastName ="no named",int age =20}){
  // print(firstName);
  // print(lastName);
  print("full name : $firstName $lastName");
  print("Age : $age");
}