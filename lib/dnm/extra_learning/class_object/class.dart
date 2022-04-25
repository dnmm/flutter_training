void main() {
  var superman = new Hero();
  superman.name = "clark";
  superman.myPower();
}

class Hero {
  late String name;

  myPower() {
    print("${name} can fly");
  }
}
