// => class ka andar ap direct print karwana chaho to nai hoga jaisa main ma karta, class ma apko methods
// ya function ka through apna class ka object ka through initialize karta (function or methods).

// void main() {
//   PersonModel person = PersonModel();
//   PersonModel person1 = PersonModel();

//   person.name = "Hasnain Ali";
//   person.age = 22;
//   person.fatherName = "Zahoor";
//   person.isStudent = true;

//   person1.name = "Hasnain Ali";
//   person1.age = 22;
//   person1.fatherName = "Zahoor";
//   person1.isStudent = false;

//   person.displayinfo();
//   person1.displayinfo();
// }

// class PersonModel { 
//   String? name;
//   int? age;
//   String? fatherName;
//   bool? isStudent;

//  void displayinfo() {
//   print("My name is  $name");
//   print("My age is  $age");
//   print("My father name is  $fatherName");
//   print("Is he Student:  $isStudent");
//  }
// }


// When we need to update the value How can we?
void main() {
  PersonModel person = PersonModel();
  PersonModel person1 = PersonModel();

  person.name = "Hasnain Ali";
  person.age = 22;
  person.fatherName = "Zahoor";
  person.grade = "A";

  person1.name = "Ahsan Ali";
  person1.age = 24;
  person1.fatherName = "Zahoor";
  person1.grade = "B";

  person.displayinfo();
  person.newGrade("A+");
  person1.displayinfo();
  person1.newAge(25);
}

class PersonModel { 
  String? name;
  int? age;
  String? fatherName;
  String? grade;

 void displayinfo() {
  print("My name is  $name");
  print("My age is  $age");
  print("My father name is  $fatherName");
  print("Grade:  $grade");
  print("---------------------");
 }

 void newGrade(grade) {
  String newGrade = grade;
  print("Updated the grade to $newGrade for $name");
  print("---------------------");
 }

 void newAge(age) {
  int newAge = age;
  print("Updated the age to $newAge for $name");
  print("---------------------");
 }
}

