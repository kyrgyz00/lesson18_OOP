void main() {
  Country Kyrgyzstan = Country();
  Kyrgyzstan.printOut(
    name: "Kyrgyzstan",
    weather: "Changable",
  );
  print(Kyrgyzstan.printOn(name: "Turkey", weather: "rainy"));

  Car machina = Car(name: "BMW", power: 2345, colour: "red", price: 77600);
  print(machina.mean());

  Phone firstPhone =
      Sony.byctr(brand: "Sony", model: "experia", number: 0989, weight: 432);
  firstPhone.out();
  Phone second = Samsumg.byctr(
      brand: "Samsung", model: "S22 Ultra", number: 0977, weight: 322);
  second.out();
  Phone third =
      Iphone.byctr(brand: "Apple", model: "13 Pro ", number: 7777, weight: 211);
  third.out();
}

class Country {
  String? name;
  String? weather;
  Country({this.name, this.weather});

  void printOut({
    required name,
    required weather,
  }) {
    print("Name of the country : $name, weather of country: $weather");
  }

  printOn({
    required name,
    required weather,
  }) {
    return (" Country: $name, weather: $weather");
  }
}

class Car {
  int power;
  String colour;
  String name;
  int price;

  Car({
    required this.name,
    required this.power,
    required this.colour,
    required this.price,
  });

  String mean() {
    return "Name: $name, power: $power, colour: $colour, price: $price ";
  }
}

class Phone {
  int? number;
  String? model;
  int? weight;

  Phone({
    this.number,
    this.model,
    this.weight,
  });
  Phone.byctr(
    this.model,
    this.number,
    this.weight,
  );
  out() {
    // print("model: $model\nnumber: $number\nweight: $weight");
  }
}

class Sony extends Phone {
  String? brand;
  Sony(String model, int number, int weight, this.brand) : super();
  Sony.byctr({
    required this.brand,
    required model,
    required number,
    required weight,
  }) : super.byctr(model, number, weight);
  @override
  out() {
    print("\t$brand\nmodel: $model\nnumber: $number\nweight: $weight");
  }
}

class Samsumg extends Phone {
  String? brand;
  Samsumg(String model, int number, int weight, this.brand) : super();
  Samsumg.byctr({
    required this.brand,
    required model,
    required number,
    required weight,
  }) : super.byctr(model, number, weight);

  @override
  out() {
    print("\t$brand\nmodel: $model\nnumber: $number\nweight: $weight");
  }
}

class Iphone extends Phone {
  String? brand;
  Iphone(String model, int number, int weight, this.brand) : super();
  Iphone.byctr({
    required this.brand,
    required model,
    required number,
    required weight,
  }) : super.byctr(model, number, weight);

  @override
  out() {
    print("\t$brand\nmodel: $model\nnumber: $number\nweight: $weight");
  }
}
