import 'package:untitled/user.dart';

void main() {
  User user = User("Mohammed", 1);
  Patient patient = Patient("Ebrahim Ali", 2, 015596720);
  Doctor doctor = Doctor("Dr.Mostafa Khaled", 3, "Mansoura", "011255");
  user.displayInfo();
  print('--------------');
  patient.displayInfo();
  print('--------------');
  doctor.displayInfo();


}