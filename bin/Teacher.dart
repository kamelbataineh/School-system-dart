import 'dart:io';
import 'Student.dart';
import 'array.dart';

///
///
///
///
///
///
///
///
class Teacher {
  String usernameTeacher = "t";
  String passwordTeacher = "t";
  late School school;
  late List<Student> student;
  late int teacherId;
  late String username;
  late String password;
  late String confirmPassword;
  late String name;
  late int age;
  late String gender;
  late int phoneNo;
  late String address;
  late String email;
  late String classTeacher;

  Teacher({
    required this.student,
    required this.teacherId,
    required this.username,
    required this.password,
    required this.confirmPassword,
    required this.name,
    required this.age,
    required this.gender,
    required this.phoneNo,
    required this.address,
    required this.email,
    required this.classTeacher,
  });

  Map<String, String> users = {
    "kamel": "123",
  };

  void signUp() {
    String username;
    while (true) {
      stdout.write("Enter username: ");
      username = stdin.readLineSync()!;
      if (!users.containsKey(username)) {
        break;
      } else {
        print("Username already exists. Please choose a different username.");
      }
    }

    String email;
    while (true) {
      stdout.write("Enter email (e.g., example@domain.com): ");
      email = stdin.readLineSync()!;
      if (email.contains('@') && email.contains('.') && email.contains('com')) {
        break;
      } else {
        print("Invalid email format. Please enter a valid email.");
      }
    }

    String password;
    String confirmPassword;
    while (true) {
      stdout.write("Enter password: ");
      password = stdin.readLineSync()!;

      stdout.write("Confirm password: ");
      confirmPassword = stdin.readLineSync()!;

      if (password == confirmPassword) {
        break;
      } else {
        print("Passwords do not match. Please try again.");
      }
    }

    users[username] = password;
    print("Sign up successful!\n");
  }

  bool login() {
    print('\n------------------------------------');
    while (true) {
      stdout.write("Enter username: ");
      String username = stdin.readLineSync()!;

      stdout.write("Enter password: ");
      String password = stdin.readLineSync()!;

      if (users.containsKey(username) && users[username] == password) {
        print("Login successful!\n");
        print('------------------------------------');
        return true;
      } else {
        print("Invalid username or password. Please try again.");
        stdout.write("Do you want to try again? (yes/no): ");
        String response = stdin.readLineSync()!.toLowerCase();

        if (response != 'yes') {
          return false;
        }
      }
    }
  }

  bool login1() {
    print('\n------------------------------------');
    stdout.write("Enter username: ");
    String inputUsername = stdin.readLineSync()!;
    stdout.write("Enter password: ");
    String inputPassword = stdin.readLineSync()!;
    if (inputUsername == usernameTeacher && inputPassword == passwordTeacher) {
      print("Login successful!\n");
      print('------------------------------------');

      return true;
    } else {
      print("Invalid username or password. Please try again.");
      return false;
    }
  }

  void logout() {
    print('\n------------------------------------');
    print("Logged out successfully.");
    print('------------------------------------');
  }

  void viewstudent(School school) {
    school.printStudents();
  }

  void addMark(int studentId) {
    Student? selectedStudent;
    try {
      selectedStudent = student.firstWhere(
        (student) => student.studentId == studentId,
      );
    } catch (e) {
      selectedStudent = null;
    }

    if (selectedStudent != null) {
      print("Selected Student: ${selectedStudent.username}");

      while (true) {
        print("\n-------------------------------------");
        print("         |  To-do list  |            ");
        print("-------------------------------------");
        print("Select an option:");
        print("1  -  Arabic      ");
        print("2  -  Math        ");
        print("3  -  Science      ");
        print("4  -  Show all marks ");
        print("5  -  Add all marks");
        print("6  -  Done");
        print("-------------------------------------\n");

        stdout.write("Enter your choice:");
        int choice = int.parse(stdin.readLineSync()!);

        switch (choice) {
          case 1:
            enterMark(selectedStudent, "Arabic");
            break;
          case 2:
            enterMark(selectedStudent, "Math");
            break;
          case 3:
            enterMark(selectedStudent, "Science");
            break;
          case 4:
            showAllMarks(selectedStudent);
            break;
          case 5:
            addAllMarks(selectedStudent);
            break;
          case 6:
            print("Finished entering marks.");
            return;
          default:
            print("Invalid choice. Please select a valid option.");
        }
      }
    } else {
      print("Student not found.");
    }
  }

  void enterMark(Student student, String subject) {
 
  while (true) {
    stdout.write("Enter mark for $subject (0-100): ");
    int mark = int.parse(stdin.readLineSync()!);
    if (mark < 0 || mark > 100) {
      print("Invalid mark. Please enter a value between 0 and 100.");
    } else {
      student.marks[subject] = mark;
      print("Mark added successfully for ${student.username}.");
      break; 
    }
  }
}

  void showAllMarks(Student student) {
    stdout.write("Marks for ${student.username}:");
    if (student.marks.isEmpty) {
      print("No marks recorded.");
    } else {
      print("--------------------------------------------------");
      print("| Subject         | Mark                      |");
      print("--------------------------------------------------");
      student.marks.forEach((subject, mark) {
        print(
            "| ${subject.padRight(15)} | ${mark.toString().padRight(11)}               |");
      });
      print("--------------------------------------------------");
    }
  }

  void addAllMarks(Student student) {
    stdout.write("Enter mark for Arabic:");
    int arabicMark = int.parse(stdin.readLineSync()!);
    stdout.write("Enter mark for Math:");
    int mathMark = int.parse(stdin.readLineSync()!);
    stdout.write("Enter mark for Science:");
    int scienceMark = int.parse(stdin.readLineSync()!);

    student.marks['Arabic'] = arabicMark;
    student.marks['Math'] = mathMark;
    student.marks['Science'] = scienceMark;
    print("All marks added successfully for ${student.username}.");
  }

  void getMarksDetail(int studentId) {
    Student? selectedStudent;
    try {
      selectedStudent = student.firstWhere(
        (student) => student.studentId == studentId,
      );
    } catch (e) {
      selectedStudent = null;
    }

    if (selectedStudent != null) {
      print("Marks for Student: ${selectedStudent.username}");
      if (selectedStudent.marks.isEmpty) {
        print("No marks recorded for ${selectedStudent.username}.");
      } else {
        selectedStudent.marks.forEach((subject, mark) {
          print("Subject: $subject, Mark: $mark");
        });
      }
    } else {
      print("Student not found.");
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
///
///
void main() {
//   School school = School();
//   Teacher teacher = Teacher(
//     student: school.studentNames,
//     teacherId: 2,
//     username: "kamel",
//     password: "kamel123@",
//     confirmPassword: "kamel123@",
//     name: "Kamel",
//     age: 20,
//     gender: "Male",
//     phoneNo: 7777777777,
//     address: "Some Address",
//     email: "kamel@example.com",
//     classTeacher: "Class A",
//   );

//  teacher.viewstudent(school);
//   stdout.write("Enter student ID [ 1 - ${school.studentNames.length} ] to add marks : ");
//   int id = int.parse(stdin.readLineSync()!);
//   teacher.addMark(id);

//  teacher.viewstudent(school);

//  stdout.write("Enter student ID [ 1 - ${school.studentNames.length} ] to get marks details : ");
//   int id1 = int.parse(stdin.readLineSync()!);
//   teacher.getMarksDetail(id1);
}
