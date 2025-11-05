
import 'dart:core';


abstract class Vehicle {
  String brand;
  String model;
  int year;
  
  Vehicle(this.brand, this.model, this.year);
  

  void start();
  void stop();
  

  void displayInfo() {

    print("Vehicle Info: $year $brand $model");
  }
  

  int calculateAge() {

    return DateTime.now().year - year;
  }
}


class Car extends Vehicle {
  int numberOfDoors;
  
  Car(String brand, String model, int year, this.numberOfDoors) : super(brand, model, year);
  
  @override
  void start() {

    print("🚗 Starting the $brand $model car engine. Doors locked.");
  }
  
  @override
  void stop() {

    print(" Stopping the $brand $model car engine. Parking brake engaged.");
  }
  
  @override
  void displayInfo() {

    print("Car Info: $year $brand $model ($numberOfDoors doors)");
  }
}


class Motorcycle extends Vehicle {
  bool hasWindshield;
  
  Motorcycle(String brand, String model, int year, this.hasWindshield) : super(brand, model, year);
  
  @override
  void start() {

    print("🏍️ Starting the $brand $model motorcycle engine. Revving up!");
  }
  
  @override
  void stop() {

    print(" Stopping the $brand $model motorcycle engine. Kickstand down.");
  }
  
  @override
  void displayInfo() {

    String wsStatus = hasWindshield ? "Yes" : "No";
    print("Motorcycle Info: $year $brand $model (Has windshield: $wsStatus)");
  }
}

void main() {
  print("--- Inheritance and Polymorphism Demo ---");
  print("----------------------------------------");
  

  List<Vehicle> vehicles = [
    Car("Toyota", "Camry", 2020, 4),
    Motorcycle("Honda", "CBR", 2021, true),
    Car("Ford", "Mustang", 2018, 2),
    Motorcycle("Harley-Davidson", "Iron 883", 2023, false),
  ];

  for (Vehicle vehicle in vehicles) {
    print("\nProcessing ${vehicle.brand} ${vehicle.model}...");
    

    vehicle.displayInfo();
    

    vehicle.start();
    

    vehicle.stop();
    

    print("Vehicle age: ${vehicle.calculateAge()} years");
  }
}