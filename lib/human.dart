class Human {
  static int numberOfObjects = 0;
  int _numberOfArms = 0;// Not Named OR Optional
  double? height;
  double? width;
  String? hairColor;
  String? name;

  set numberOfArms(int numberOfArms) {
    if (numberOfArms <= 1 && numberOfArms >= 0) {
      _numberOfArms = numberOfArms;
    } else {
      throw Exception("Wrong Number not in range 0-2");
    }
  }

  // int get numberOfArms {
  //   return this.number_OfArms;
  //
  // }
  Human(
    // this._numberOfArms,
      {
    this.height,
    this.width,
    this.hairColor,
    this.name,
  }) {
    numberOfObjects++;
  }

  void walk() {
    print('$name is Walking'); // No Static
  }

  static void printNumberOfObject() {
    print('Number Of Object = $numberOfObjects');
  }
}
