void main() {
  Student student1 = Student("Alex", 4, "economy");
  print(student1.describe());
  Student student2 = Student("Mike", 2, "law");
  print(student2.describe());
  Student student3 = Student("Stive", 1, "computer science");
  print(student3.describe());
}

class Student {
  final String name;
  final int course;
  final String specialty;

  Student(this.name, this.course, this.specialty);

  String describe() {
    return "Student $name is on $course course. Specialty: $specialty";
  }
}
