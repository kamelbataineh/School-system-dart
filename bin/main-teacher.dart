import 'Teacher.dart';
import 'dart:io';
import 'array.dart';

///
///
///
///
///
///
///
void teacher() {
  School school = School();
  Teacher teacher = Teacher(
    student: school.studentNames,
    teacherId: 2,
    username: "kamel",
    password: "kamel123@",
    confirmPassword: "kamel123@",
    name: "Kamel",
    age: 20,
    gender: "Male",
    phoneNo: 7777777777,
    address: "Some Address",
    email: "kamel@example.com",
    classTeacher: "Class A",
  );

  print("Log In:");
  if (!teacher.login1()) {
    print("Login failed. Exiting...");
    return;
  }
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
        teacher.signUp();
        print("Go to (Log In).\n----------------");
        break;

      case '2':
        if (teacher.login()) {
          print("You are now logged in.");

          while (true) {
            print("""
==========================
        Main Menu
==========================
1. Enter Marks
2. Get Marks Detail
3. Exit
==========================
""");
            stdout.write("Choose an option (1-3): ");
            String choice = stdin.readLineSync()!;
            print("\n==========================\n");

            switch (choice) {
              case '1':
                teacher.viewstudent(school);
                print('------------------------------------');
                stdout.write(
                    "Enter student ID [ 1 - ${school.studentNames.length} ] to add marks : ");

                int id = int.parse(stdin.readLineSync()!);
                teacher.addMark(id);
                print('\n------------------------------------\n');

                break;

              case '2':
                teacher.viewstudent(school);
                print('------------------------------------');
                stdout.write(
                    "Enter student ID [ 1 - ${school.studentNames.length} ] to get marks details : ");

                int id1 = int.parse(stdin.readLineSync()!);
                print('\n------------------------------------');
                teacher.getMarksDetail(id1);
                print('\n------------------------------------\n');
                break;

              case '3':
                print("Exiting...");
                return;

              default:
                print("Invalid choice. Please enter a number between 1 and 3.");
            }
          }
        } else {
          print("Login failed. Please try again.");
        }

      case '3':
        teacher.logout();
        return;
      case '4':
        print("Exit...");
        return;
      default:
        print("Invalid option. Please choose a number between 1 and 4.");
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
  teacher();
}
