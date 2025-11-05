
mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {

    return baseSalary + bonus;
  }
  
  void processPayment(double amount) {

    print(" Payment processed: \$${amount.toStringAsFixed(2)} deposited successfully.");
  }
}


mixin Reportable {
  String generateReport(String employeeName, String department) {
    // Generate report
    return " Report generated for $employeeName in the $department department.";
  }
}


abstract class Employee {
  String name;
  String id;
  String department;
  
  Employee(this.name, this.id, this.department);
  
  String getJobTitle();
  double getBaseSalary();
  
  void displayInfo() {
    print("\n--- Employee Info ---");
    print("Name: $name (ID: $id)");
    print("Department: $department");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: \$${getBaseSalary().toStringAsFixed(2)}");
  }
}


class Manager extends Employee with Payable, Reportable {
  int teamSize;
  
  Manager(String name, String id, String department, this.teamSize) : super(name, id, department);
  
  @override
  String getJobTitle() {
  
    return "Team Manager";
  }
  
  @override
  double getBaseSalary() {

    return 80000.00;
  }
  
  @override
  void displayInfo() {
    
    super.displayInfo(); 
    print("Team Size: $teamSize members");
  }
}


class Developer extends Employee with Payable {
  String programmingLanguage;
  
  Developer(String name, String id, String department, this.programmingLanguage) : super(name, id, department);
  
  @override
  String getJobTitle() {

    return "$programmingLanguage Developer";
  }
  
  @override
  double getBaseSalary() {

    return 65000.00;
  }
  
  @override
  void displayInfo() {

    super.displayInfo(); 
    print("Primary Language: $programmingLanguage");
  }
}

void main() {
  print("--- Advanced Features: Mixins & Inheritance Demo ---");
  

  Manager manager = Manager("Faiji ", "M101", "R&D", 5);
  Developer developer = Developer("Nayeem", "D205", "R&D", "Dart");
  

  const double managerBonus = 12000.00;
  const double developerBonus = 8000.00;

  manager.displayInfo();
  developer.displayInfo();

  print("\n--- Salary Calculation & Payment ---");
  
 
  double managerSalary = manager.calculateSalary(manager.getBaseSalary(), managerBonus);
  print("${manager.name}'s total salary (Base + Bonus): \$${managerSalary.toStringAsFixed(2)}");
  

  manager.processPayment(managerSalary);

  print("");

 
  double developerSalary = developer.calculateSalary(developer.getBaseSalary(), developerBonus);
  print("${developer.name}'s total salary (Base + Bonus): \$${developerSalary.toStringAsFixed(2)}");
  

  developer.processPayment(developerSalary);

  print("\n--- Report Generation (Manager only) ---");


  String managerReport = manager.generateReport(manager.name, manager.department);
  print(managerReport);
  

  print("\nNote: Only Manager has access to Reportable functionality.");
}