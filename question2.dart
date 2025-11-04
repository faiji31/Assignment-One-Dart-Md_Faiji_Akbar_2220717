import 'dart:math';

void main() {

  List<String> studentNames = ["Faiji", "Nayeem", "Mustaqueem", "Jubaer", "Tashfiq"];

 
  Map<String, int> studentScores = {};

  Random random = Random();
  for (String student in studentNames) {
  
    int score = random.nextInt(41) + 60; 
    studentScores[student] = score;
  }

 
  String highestStudent = "";
  int highestScore = -1; 
  String lowestStudent = "";
  int lowestScore = 101; 
  int totalScore = 0;

  for (String student in studentNames) {
    int score = studentScores[student]!; 

 
    if (score > highestScore) {
      highestScore = score;
      highestStudent = student;
    }

    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = student;
    }

  
    totalScore += score;
  }

  double averageScore = totalScore / studentNames.length;

  print("--- Score Assignment and Summary ---");
  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: ${averageScore.toStringAsFixed(2)}"); 

  print("\n--- Student Categories ---");

  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;
    String category = "";

  
    switch (score ~/ 10) {
      case 10:
      case 9:
        category = "Excellent";
        break;
      case 8:
        category = "Good";
        break;
      case 7:
        category = "Average";
        break;
      default: 
        category = "Needs Improvement";
    }

    print("$student: $score ($category)");
  }
}