
main(){
  print("mohammed ashraf");
  //sout
  print('mohammed'); //by sout


  //data type=>string, int , bool , double
  String name ="mohammed";
  int id = 20;
  List names=["mohammed",20,"ashraf",52];
  List <String>languages=["arabic","english",'french'];
  bool isWorking= true;
  int numberOne=10;
  int numberTwo=5;
  int Result= numberOne+numberTwo;
  print('number$Result');
  Result++;
  print(Result);
  print(numberOne>numberTwo);
  print(numberOne>=numberTwo);
  print(numberOne<numberTwo);
  print(numberOne<=numberTwo);
  print(numberOne==numberTwo);
  print(numberOne!=numberTwo);

  print('result: ${numberOne+numberTwo}');
  print('result: ${numberOne*numberTwo}');
  print('result: ${numberOne-numberTwo}');
  print('result: ${numberOne/numberTwo}');
  print(names);
  print("ID:$id");
  print("name:$name");
  print('Is working$isWorking');
  print('Languages $languages');
  print("===============================");
  //$$ || !
  // += -= *= %=
  int numOne =5;
  print(numOne >4 && numOne<15);
  print(numOne >4 || numOne<15);
  bool test= true;
  print(!test);

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
  print('=======================');


  // if condition   switch case
  // if (condition) {body"code"} else{body}
  if(5>10){
    print( "10 is bigger");
  } else {
    print("5 is smaller");
  }
  print('======================');

  int num3= 10 ;
  if(num3>1&&num3<9){
    print("num3 is a valid number");
  }else{
    print('num3 is not valid number');

  }
  print('===============');
  // requested     accepted
  String orderStatus= "requested";
  if(orderStatus=="accepted"){
    print('order accepted');
  } else if(orderStatus=="requested"){
    print('order requested');
  }else{
    print('order Status Unknown!');

  }
  print('=====================');

  switch(orderStatus){
    case"requested":{
      print('order requested');
    }
    break;
    case"accepted":{
      print('order accepted');
    }
    break;
    defalut:{
      print('order Status Unknown!');
    }
  }
  print('==========================');
  int dayOfWeek = 1;
  switch(dayOfWeek){
    case 1: {
      print('saturday');
    }
    break;
    case 2: {
      print('sunday');
    }
    break;
    case 3: {
      print('monday');
    }
    defalut:{
      print('NOt valid number');

    }
  }
  //loops
  //variable +condition (increment/ decrement)= loop
  int x = 0;
  while(x<5){
    print("hello world");
    x++;
  }
  print('end loop');
  // for loop
  for(int y= 0 ;y<5; y++){
    print(y);
  }
  print('==================================');
  for(int a =0 ;a<=10 ; a++){
    if(a==6){
      continue;
    }
    print(a);
  }
  print('=====================================');
  for(int a =0 ;a<=10 ; a++){
    if(a==6){
      break;
    }
  int number = 5;
    print(a);
  }
  print('=====================================');
  int i = 0 ;
  do{
    print(i);
    i++;
  }while(i<5);
  print('====================================');
   int num = 0;
  do{
    print(num);
    i++;
  }while(num>5);
  print('=============================');

  List<String> allNames =[];
  allNames.add("mohammed");
  allNames.add("ashraf");
  List <String>namesGirls=["Nanda","nourhan","Ali","Ebrahim","mossad"];
  allNames.addAll(namesGirls);
  print(allNames);
  print(allNames.length);
  //Get value
  print(allNames[3]);
  print('==============================');
  print(allNames.elementAt(0));
  // Edit list
  allNames[0]="Aya";
  print(allNames);
  print('==============================');
  print(allNames.isEmpty);
  //bool
  print(allNames.isNotEmpty);
  print(allNames);

  print('==============================');
  allNames=allNames.reversed.toList();// to  save reversed
  print(allNames.reversed); //to print reversed only
  print(allNames);
  print(allNames.first);
  print(allNames.last);
  print(allNames.contains("Ali"));
  print(allNames);
  print(allNames.remove("Ali")); //boolean
  print(allNames.removeAt(0)); //string
  print(allNames.removeLast()); //string
  allNames.removeRange(0, 2);
  print(allNames);
  allNames.removeWhere((element) => element=="ashraf");//void
  print(allNames);
  print('=========================================');
  String welcome = "welcome to flutter course";
  welcome = welcome. trim();
  print(welcome.length);
  print(welcome.isEmpty);
  print(welcome.isNotEmpty);
  print(welcome.contains("flutter"));
  print(welcome.length);
  print(welcome.toLowerCase());
  print(welcome.toUpperCase());
  print(welcome.substring(8,10));
  String email =" medoashraf@gmail.com ";
  print(email.length);
  print(email.trim());
  print(email.trimLeft());
  print(email.trimRight());
  print('=======================');
  String phoneNumber= "00201064368294";
  if(phoneNumber.startsWith("00")){
    phoneNumber = phoneNumber.replaceFirst("00", "+");
  }
  phoneNumber = phoneNumber.replaceAll(" ", "").replaceAll("-", "");
  print(phoneNumber);

 String dateTime = "2023-08-06  12:20PM";
 List<String> dateTimes=dateTime.split("-");
  print(dateTimes);
  print(dateTimes[0]);
  print(dateTimes[1]);
  String date = dateTime[0];
  print(date.split("-"));
  print('========================');
  print(date);
  print('=========================================');

  //casting
  String strName = "1";
  int num5 =5;
  double num6 = 6.2 ;

  print(int.parse(strName));
  print(double.parse(strName));

  print(num5.toString());
  print(num5.toDouble());

  print(num6.toString());
  print(num6.toInt());
}
