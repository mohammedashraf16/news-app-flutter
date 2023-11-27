void main() {
  FootballPlayer mohammed = FootballPlayer(
    speed: 89,
    numberOfGoals: 100,
    haircolor: "Black",
    height: 165
  );
  print(mohammed.haircolor);
  print(mohammed.numberOfGoals);
  print(mohammed.toString());
}

class Human extends Object {
  String? haircolor;
  double? height;
  double? width;

  Human({this.haircolor, this.height});
}

class FootballPlayer extends Human {
  int? speed;
  int? numberOfGoals;

  void run() {
    print('player is running');
  }

  FootballPlayer(
      {this.speed, this.numberOfGoals, String? haircolor, double? height})
      :super(haircolor: haircolor, height: height,);
//this.haircolor = haircolor;
@override
  String toString() {
    return "this is object";
  }
}


