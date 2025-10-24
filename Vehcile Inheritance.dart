class Vehicle {
  String _brand = "Ford";
  int _year = 2026;

  Vehicle(this._brand, this._year);
  String get brand => _brand;
  int get year => _year;

  void displayinfo() {
    print("Brand: $_brand");
    print("Year: $_year");
  }
}

class Car extends Vehicle {
  String model = "";

  Car(String brand, int year, this.model) : super(brand, year);

  displayinfo() {
    print("Brand: $brand  Year: $year  model: $model");
  }
}

void main() {
  Car car1 = Car("Ford", 2026, "Mustang");
  Car car2 = Car("Toyota", 2015, "Corolla");

  print("all info of car1: ");
  car1.displayinfo();

  print("all info of car2: ");
  car2.displayinfo();
}
