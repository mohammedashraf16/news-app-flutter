void main(){
  //Using Ternary Operator, compare between two integers variables

int numberOne = 4;
int numberTwo = 10;
String result=numberTwo>numberOne? "$numberTwo is greater than $numberOne":"$numberTwo is less than $numberOne";
print(" Result: $result");


//using switch, a dart program to find number of days in a month


  int month = 4 ;
  switch (month) {
    case 1: {
      print('January = 31 days');
      }
      break;
  case 3: {
        print('March = 31 days');
     }
         break;
    case 5: {
      print('May = 31 days');
    }
    break;
    case 7: {
      print('July = 31 days');
    }
    break;
    case 8: {
      print('August = 31 days');
    }
    break;
    case 10: {
      print('October = 31 days');
    }
    break;
    //case 12: // December
    case 12: {
      print('December = 31 days');
    }
    break;

    case 4: {
      print('April = 30 days');
    }
    break;
    case 6: {
      print('June = 30 days');
    }
    break;

    case 9: {
      print('September = 30 days');
    }
    break;
    case 11: {
      print('November = 30 days');
    }
    break;



    case 2: {
      print('February = 28 days');  //in leap year
    }
    break;


    default:
      print('Invalid month number');
  }



  //Using if, dart program prints whether the variable is even or odd
  int numOne = 8;
  if (numOne % 2 == 0) {
    print("$numOne is even.");
  } else {
    print("$numOne is odd.");
  }
  }