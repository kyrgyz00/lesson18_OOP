void main() {
  Student bek = Student();

  bek.getScolarship(
    firstName: "Bekbolot",
    lastName: "Bekbolot",
    group: 45,
    averageMark: 5,
  );
  Animal dog = Dog.bytheref(name: "Bob", location: "Bishkek", food: "bones", bark: "gav-gav");

  dog.makeNoise();
  dog.eat();
  dog.sleep();
}

class Student {
  String? firstName;
  String? lastName;
  int? group;
  double? averageMark;

  Student({
    this.firstName,
    this.lastName,
    this.group,
    this.averageMark,
  });

  int getScolarship({
    required firstName,
    required lastName,
    required group,
    required averageMark,
  }) {
    int sum = 20000;
    print(
        "firstname: $firstName, lastname: $lastName, group: $group, averagemark: $averageMark");
    if (averageMark == 5) {
      print("your scolarship when student is $sum");
      return sum;
    } else {
      print("your scolarship when student is 0");
      return sum;
    }
  }
}

class Aspirant extends Student {
  int sum = 40000;
  int sum1 = 18000;
  @override
  int getScolarship({
    required firstName,
    required lastName,
    required group,
    required averageMark,
  }) {
    int sum = 40000;
    int sum1 = 18000;
    print(
        "firstname: $firstName, lastname: $lastName, group: $group, averagemark: $averageMark");
    if (averageMark == 5) {
      print("your scolarship is $sum");
      return sum;
    } else {
      print("your scolarship is $sum1");
      return sum1;
    }
  }
}

class Animal {
  String? food;
  String? location;

  Animal({this.food, this.location});
  Animal.bytheref(this.food, this.location);

  makeNoise() {}
  eat() {}
  sleep() {
    // print(" this kind of animal does not sleep");
  }
}

class Dog extends Animal {
  String? name;
  String? bark;
  Dog(
    String food,
    String location,
    this.bark,
    this.name,
  ) : super();
  Dog.bytheref({
    required this.name,
    required location,
    required food,
    required this.bark,
  }) : super.bytheref(food, location);

  @override
  makeNoise() {
    print("\tDog\nname: $name\nlocation: $location\nbark: $bark");
  }

  eat() {
    print("food: $food");
  }

  sleep() {
    print("$name sleeps in the land");
  }
}

class Cat extends Animal {
  String? name;
  String? colour;
  int? age;
  String? kind;

  @override
  void makeNoise() {}

  @override
  void eat() {}
}

class Horse extends Animal {
  String? name;
  String? parents;
  int? age;
  String? colour;
  int? weight;
  @override
  void makeNoise() {}

  @override
  void eat() {}
}
