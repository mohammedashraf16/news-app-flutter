void main(){
  Doctor mohammed = Doctor();
  print(mohammed.takeTemprture());
}
class Employee{
  void recordAttendance(){}

}
class Nurse extends Employee{
  int takeTemprture(){
    return 0;
  }
}
class Doctor extends Employee with Medical,SomeMixin{


}
class ItEngineer extends Employee{

}
mixin Medical {
  int takeTemprture(){
    return 40;
  }
}
mixin SomeMixin{
  int takeTemprture() {
    return 0;
  }
}