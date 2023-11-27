
void main(){
  //dart program prints the average of 4 variables
  int numberOne =10;
  int numberTwo =20;
  int numberThree=30;
  int numberFour=40;
  double average = numberOne+numberTwo+numberThree+numberFour/4;
  print('Average : $average');




  //dart program compare between 2 variables (using comparison operator) and print the result
  int numberFive=100;
  int numberSix=90;
  print(numberFive>numberSix);
  print(numberFive>=numberSix);
  print(numberFive<numberSix);
  print(numberFive<=numberSix);
  print(numberFive!=numberSix);


  //dart project changes degree from Celsius to Fahrenheit
  double celsius=50;
  double fahrenheit=(celsius*9/5)+32;
  print('Celsius To Fahrenheit=  $fahrenheit');

  print("===============================");
  //$$ || !
  // += -= *= %=
  int numOne =5;
  print(numOne >4 && numOne<15);
  print(numOne >4 || numOne<15);

  print('======================');
  double numTwo =4;
  numTwo += 20;
  print( numTwo);

  numTwo *= 5;
  print( numTwo);

  numTwo /= 4;
  print( numTwo);

  numTwo %= 20;
  print( numTwo);

  print('====================');


  // is   is!
  print(numTwo is double);
  print(numTwo is ! String);
  print(numTwo is int);
  print('==============');
  //?:
  // condition ? resultOne : resultTwo;
  String text = 20>5 ? "yes": "no";
  print(text);
  int detect = 50<6 ? 1 : 0 ;
  print(detect);
  print('================');
}

