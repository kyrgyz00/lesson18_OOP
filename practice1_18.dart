void main() {
  Nikola name = Nikola();
  name.printName(name: "BEk", age: 12);

  Math bb = Math(a: 75, b: 5);
  bb.addition();
  bb.division();
  bb.multiplication();
  bb.subtraction();

  Car mers = Car(color: "green", type: "truck", year: 2002);
  mers.first();
  mers.second();
  mers.third();
  mers.fourth();
  mers.fifth();

  TriangleChecker ber = TriangleChecker(a: 7, b: 5, c: 3);

  print(ber.is_triangle());
  MyString mn = MyString(ban: "Aitertis");
  print(mn.reverse());
  print(mn.ucFirst());
}

class Nikola {
  String? name;

  int? age;

  void printName({
    required name,
    required age,
  }) {
    if (name != "Nikolai") {
      print("I am not $name, Nikolai.");
    }
  }
}

class Math {
  int a;
  int b;

  Math({required this.a, required this.b});

  void addition() {
    print("$a + $b = ${a + b}");
  }

  void multiplication() {
    print("$a * $b = ${a * b}");
  }

  void division() {
    print("$a - $b = ${a - b}");
  }

  void subtraction() {
    print("$a / $b = ${a ~/ b}");
  }
}

class Car {
  String? color;
  String? type;
  int? year;
  Car({
    required this.color,
    required this.type,
    required this.year,
  });
  Car.bythevons(this.color, this.type, this.year);

  void first() {
    print("The car is running");
  }

  void second() {
    print("The car is off");
  }

  void third() {
    print("The year of the car: $year");
  }

  void fourth() {
    print("The type of the car: $type");
  }

  void fifth() {
    print("The color of the car: $color");
  }
}

class TriangleChecker {
  int a;
  int b;
  int c;
  String? letter = "";

  TriangleChecker(
      {required this.a, required this.b, required this.c, this.letter});

  String is_triangle() {
    if (a >= 0 && c >= 0 && b >= 0 && a + b > c && a + c > b && c + b > a) {
      return "Uraa, you can build a triangle! ";
    } else if (a < 0 || b < 0 || c < 0) {
      return "- Nothing will work with negative numbers!";
    }
    // else if (a is String || b && c == letter) {
    //   return "- You only need to enter numbers!";
    // }
    else {
      return "- It's a pity, but you can't make a triangle out of this.";
    }
  }
}

class MyString {
  String ban;
  MyString({required this.ban});

  reverse() {
    return ban.split("").reversed.join();
  }

  ucFirst() {
    String h = ban.toString().split("").toList().first.toUpperCase();
    List<String> ty = ban.toString().split("");
    ty.removeAt(0);
    ty.insert(0, h);

    return ty.join();
  }
}
