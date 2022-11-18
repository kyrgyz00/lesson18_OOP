void main() {
  // Car kia = Car(brand: "KIA", fuel: "petrol", model: "k5", volume: 5.5);
  // kia.carIfo();

  Person firstEmployee = Employee.byAgeNameConstructor ("Bekbolot",20, "werripop");
  firstEmployee.display();
}

class Student {
  String? name;
  int? age;

  void printName() {
    print(" name of the student $name");
    print(" age of the student $age");
  }
}

class Car {
  double volume;
  String brand;
  String model;
  String fuel;
  bool isNew;

  Car({
    required this.brand,
    required this.fuel,
    this.isNew = true,
    required this.model,
    required this.volume,
  });

  void carIfo() {
    print(
        "volume-$volume, brand-$brand, model-$model, fueltype-$fuel, situation: ${isNew == true ? "new" : "old"}");
  }

  void carStart() {
    print("car started to go");
  }

  void carStop() {
    print("car has just sopped");
  }
}

class Truck_car extends Car {
  int? lifting;
  String? trailer;

  Truck_car({
    required super.brand,
    required super.fuel,
    required super.model,
    required super.volume,
  });

  void pickUP(String? stuff) {
    print("${super.model} started to pick up $stuff");
  }
}

class Truck2 extends Car {
  Truck2(
      {required super.brand,
      required super.fuel,
      required super.model,
      required super.volume});
}

class Person {
  String name = "";
  int age = 0;

  Person(this.name) {
    age = 21;
  }
  Person.byAgeNameConstructor(this.name, this.age);

  void display() {
    print("name: $name Age: $age");
  }
}

class Employee extends Person {
  String company ;
  Employee(String name, this.company) : super(name);
  Employee.byAgeNameConstructor(String name, int age, this.company)
      : super.byAgeNameConstructor(name, age);
  @override
  void display() {
    print("age: $age");
    print("name: $name");
    print("company: $company");
  }
}
