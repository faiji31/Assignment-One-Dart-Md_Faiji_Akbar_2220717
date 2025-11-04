
String name = ""; 
int age = 0; 
double height = 0.0; 
bool isStudent = false; 

double calculateBMI(double weight, double height) {
 
  if (height == 0.0) {
    return 0.0;
  }
  return weight / (height * height); 
}


String getGrade(int score) {
  if (score >= 90) {
    return "A";
  } else if (score >= 80) {
    return "B";
  } else if (score >= 70) {
    return "C";
  } else if (score >= 60) {
    return "D";
  } else {
    return "F";
  }
}

void main() {
  
  name = "Md Faiji Akbar";
  age = 25;
  height = 1.75; 
  isStudent = true;
  
  
  double myWeight = 60.0; 
  int examScore = 87; 
  
  
  double bmi = calculateBMI(myWeight, height); 
  String grade = getGrade(examScore); 
  

  print("--- Question 1 Results ---");
  print("Personal Data:");
  print("Name: $name, Age: $age, Height: ${height}m, Is Student: $isStudent");
  print("\nCalculations:");
  print("Weight used: ${myWeight}kg");
  print("BMI: ${bmi.toStringAsFixed(2)}");
  print("Score used: $examScore");
  print("Grade: $grade");
  print("--------------------------");
}