void main()
{
  printMyName();
  getMyName();
  welcomeVisitor("mohammed");
  print(sum(55, 100));
  print(sum2(100, 321));
  dpr("mohammed");
  dpo();
  enterMyName("Mohammed","Ashraf");
  npr(name: "mohammed");
  nprSum(numberOne: 55, numberTwo: 100);
  npo(name: "Mohammed");
  enterYourName(firstName: "mohammed",lastName: "Ashraf");
  // enterYourName3("ali",lastName: "Ebrahim");


}
void printMyName(){
  print('hello Mohammed !');

}
String getMyName(){
  return"mohammed";
}
void welcomeVisitor(String name){
  print('welcome Mr $name');

}
double sum(double numberOne ,double numberTwo){
  return numberOne + numberTwo;
}
double sum2(double numberOne ,double numberTwo)=> numberOne + numberTwo;
//alt +enter


//default parameter required
void dpr(String name){
  print(name);
}
//default parameter optional
void dpo([String name="no name"]){
  print(name);
}
//default parameter required+default parameter optional
void enterMyName(String firstName,[String lastName=""]){
  print('Welcome $firstName $lastName');
}
//Named parameter required
void npr({required String name}) {
  print(name);
}
void nprSum({required double numberOne,required double numberTwo}) {
  print(numberOne+numberTwo);
}
//named parameter optional
void npo({String name="no name"})
{
  print(name);
}
//Named parameter required + named parameter optional
void enterYourName({required String firstName,String lastName=""}){
  print('Welcome $firstName $lastName');
}
// default parameter required + named parameter optional
// void enterYourName3(String lastName),{String firstName=""}{
//   print('Welcome $firstName $lastName ');
// }