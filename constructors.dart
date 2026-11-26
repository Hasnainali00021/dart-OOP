// Constructors => block of cide inside class which is automatically created when obj of that class is
// created. Primarly purpose is to set the inital state of objects of tha particular class
// Constructors => Creates instace of class (Simple)
// void main() {
//   // Student student = Student("Hasnain Ali", 22);
//   // Student student1 = Student("Ahsan Ali", 24);

//   // student.displayinfo();
//   // student1.displayinfo();

//   List<Student> name = [
//    Student("Hasnain Ali", 22),
//    Student("Ahsan Ali", 23),
//    Student("Kashif Ali", 24)
//   ];
//   name.forEach((element) {
//     print("Name: ${element.name} Age: ${element.age}");
// });
// }

// class Student { 
//   String? name;
//   int? age;

//   Student(String name, int age){
//     this.name = name;
//     this.age = age;
//   }

//  void displayinfo() {
//   print("---------------------");
//   print("My name is  $name");
//   print("My age is  $age");
//   print("---------------------");
//  }
// }

// required keyword

// void main() {
//   Student student = Student(name: "Hasnain", email: "ali@00021gmail.com" );
//   Student student1 = Student(name: "Ahsan Ali", age: 24, email: "ahsan@gmail.com");

//   student.displayinfo();
//   student1.displayinfo();

// //   List<Student> name = [
// //    Student("Hasnain Ali", 22),
// //    Student("Ahsan Ali", 23),
// //    Student("Kashif Ali", 24)
// //   ];
// //   name.forEach((element) {
// //     print("Name: ${element.name} Age: ${element.age}");
// // });
// }

// class Student { 
//   String? name;
//   int? age;
//   String? email;

//   Student({this.name, this.age, required this.email}){}

//  void displayinfo() {
//   print("---------------------");
//   print("My name is  $name");
//   print("My age is  $age");
//   print("My email is  $email");
//   print("---------------------");
//  }
// }


// Practice Questions
// 1. Refactoring & Filtering: Given List<Student> students, write a single expression or chain using 
// .where() and .map() (with arrow syntax =>) to extract a List<String> containing "$name ($age)" only 
// for students whose age is greater than or equal to 23.
// void main() {
//   List<Student> students = [
//     Student("Hasnain Ali", 22),
//     Student("Ahsan Ali", 26),
//     Student("Asif Ali", 25)
//   ];
//   students
//   .where((s) => (s.age ?? 0) >= 23)  // filter
//   .forEach((s) => print("Name: ${s.name} Age: ${s.age}"));   // iterate over the matching students
// }

// class Student {
//   String? name;
//   int? age;

//   Student(this.name, this.age);
// }

// 2.Constructor & Null-Safety Upgrade: Refactor Student so name and age are non-nullable final fields
//  initialized via named required parameters using initializing formals, and add a single-line arrow
//  method bool isAdult() => age >= 18;.

void main() {
  List<String> names = ["Hasnain", "Ali", "Ahsan"];
  List<int> ages = [10, 22, 23];

  List<Student> students = List.generate(
  names.length, 
  (i) => Student(name: names[i] , age: ages[i])
  );

  students
  // .where((s) => s.isAdult) 
  .forEach((s) => print("Name: ${s.name} isAdult: ${s.isAdult}"));
}

class Student {
  String name;
  int age;

  Student({required this.name, this.age = 0});

  bool get isAdult => age > 18; 
}
// The primary purpose of get is to define a computed property that calculates and returns a fresh value
// on access while looking like a regular field.

// The primary purpose of the arrow operator (=>) is to concisely return the result of a single expression
//  without curly braces or a return keyword without declaring a complete sort of method or function.