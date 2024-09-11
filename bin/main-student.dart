import 'Student.dart';
import 'dart:io';

///
///
///
///
///
///
///
void student() {
  Student student = Student(
      studentId: 1,
      username: "john_doe",
      password: "password123",
      enrollmentNo: 12345,
      gender: "Male",
      email: "john.doe@example.com",
      phoneNo: 1234567890,
      address: "123 Main St",
      classId: 101);

  while (true) {
    print("""
********** Main Menu **********
1. Sign Up  -  Create a new user account  . 
2. Log In   -  Access your account        .
3. Log Out  -  Exit your account session  .
4. Exit     -  Close the application      .
*******************************
""");
    stdout.write("Choose an option (1-4): ");
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        student.signUp();
        print("Go to (Log In).\n----------------");
        break;
      case '2':
        if (student.login()) {
          print("You are now logged in.");
          while (true) {
          print("""==========================
        Main Menu
==========================
1. viewReportCard
2. Exit
==========================
""");
            stdout.write("Choose an option (1-2): ");
            String choice = stdin.readLineSync()!;
            switch (choice) {
              case "1":
                student.viewReportCard();
                break;
              case '2':
                print("Exit...");
                return;
              default:
                print(
                    "Invalid option. Please choose a number between 1 and 5.");
                break;
            }
          }
        }
        break;

      case '3':
        student.logout();
        break;
      case '4':
        print("Exit...");
        return;
      default:
        print("Invalid option. Please choose a number between 1 and 5.");
    }
  }
}

///
///
///
///
///
///
///
void main(List<String> args) {
  student();
}
