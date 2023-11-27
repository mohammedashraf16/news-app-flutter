class User {
  String name;
  int id;
  User(this.name, this.id);
  void displayInfo() {
    print('Name : $name');
    print('ID : $id');
  }
}

class Patient extends User {
  int phoneNumber;
  Patient(String name, int id,this.phoneNumber, ) :super(name, id);
  @override
  void displayInfo() {
    super.displayInfo();
    print('Phone Number : $phoneNumber');
  }

}

class Doctor extends User {
  String clinicLocation;
  String clinicLicences;

  Doctor(String name, int id, this.clinicLocation, this.clinicLicences,)
      :super(name, id);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Clinic Location : $clinicLocation');
    print('Clinic Location : $clinicLicences');

  }
}
