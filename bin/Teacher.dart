import 'dart:io';
import 'Student.dart';
import 'array.dart';
// class Teacher {
//   String usernameTeacher = "t";
//   String passwordTeacher = "t";
//   // Attributes
//   final Student student;
//   final int teacherId;
//   final String username;
//   final String password;
//   final String confirmPassword;
//   final String name;
//   final int age;
//   final String gender;
//   final int phoneNo;
//   final String address;
//   final String email;
//   final String classTeacher;

//   Teacher({
//     required this.student,
//     required this.teacherId,
//     required this.username,
//     required this.password,
//     required this.confirmPassword,
//     required this.name,
//     required this.age,
//     required this.gender,
//     required this.phoneNo,
//     required this.address,
//     required this.email,
//     required this.classTeacher,
//   });
// }

//   // تحقق من وجودها في map (containsKey)
//   Map<String, String> users = {
//     "kamel": "kamel123",
//   };

//   ///
//   ///
//   ///
//   ///
//   ///
// ////////////////////
//   ///
//   ///
//   ///
//   ///
//   ///
// //////        void signUp()
//   ///
//   ///
//   ///
//   ///
// ////////////////////
//   ///
//   ///
//   ///
//   ///
//   ///
//   ///
//   void signUp() {
//     stdout.write("Enter username: ");
//     String username = stdin.readLineSync()!;
//     if (users.containsKey(username)) {
//       print("Username already exists. Please choose a different username.");
//       return;
//     }

//     String email;
//     while (true) {
//       stdout.write("e.g.,example@domain.com : ");
//       email = stdin.readLineSync()!;

//       if (email.contains('@') && email.contains('.') && email.contains('com')) {
//         break;
//       } else {
//         print("Invalid email format. Please enter a valid email.");
//       }
//     }
//     stdout.write("Enter password: ");
//     String password = stdin.readLineSync()!;

//     stdout.write("Confirm password: ");
//     String confirmPassword = stdin.readLineSync()!;

//     if (password != confirmPassword) {
//       print("Passwords do not match. Please try again.");
//       return;
//     }

//     users[username] = password;
//     print("Sign up successful!\n");
//   }

//   ///
//   ///
//   ///
//   ///
//   ///
// ////////////////////
//   ///
//   ///
//   ///
//   ///
//   ///
// //////           login
//   ///
//   ///
//   ///
//   ///
// ////////////////////
//   ///
//   ///
//   ///
//   ///
//   ///
//   ///
//   bool login() {
//      while (true) {
//     stdout.write("Enter username: ");
//     String username = stdin.readLineSync()!;

//     stdout.write("Enter password: ");
//     String password = stdin.readLineSync()!;
//  if (users.containsKey(username) && users[username] == password) {
//         print("Login successful!\n");
//         return true;
//       } else {
//         print("Invalid username or password. Please try again.");
//         stdout.write("Do you want to try again? (yes/no): ");
//         String response = stdin.readLineSync()!.toLowerCase();
//         if (response != 'yes') {
//           return false;
//         }
//       }
//     }}
//     // if (users.containsKey(username) && users[username] == password) {
//     //   print("Login successful!\n");
//     //   return true;
//     // } else {
//     //   print("Invalid username or password. Please try again.");
//     //   return false;
//     // }

//   ///
//   ///
//   ///
//   ///
//   ///
// ////////////////////
//   ///
//   ///
//   ///
//   ///
//   ///
//   ///
//   ///
//   bool login1() {
//     stdout.write("Enter username: ");
//     String inputUsername = stdin.readLineSync()!;
//     stdout.write("Enter password: ");
//     String inputPassword = stdin.readLineSync()!;
//     if (inputUsername == usernameTeacher && inputPassword == passwordTeacher) {
//       print("Login successful!\n");
//       return true;
//     } else {
//       print("Invalid username or password. Please try again.");
//       return false;
//     }
//   }

//   void logout() {
//     print("Logged out successfully.");
//   }

//   void enterMarks() {
//     bool loggedIn = student.login();
//     if (loggedIn) {
//       student.enterMarks();
//     }
//   }

//   void GetMarksDetail() {
//     bool loggedIn = student.login();
//     if (loggedIn) {
//       student.displayMarks();
//     }
//   }

//   ///
//   ///
//   ///
//   ///
//   ///
// ////////////////////
//   ///
//   ///
//   ///
//   ///
//   ///
// //////     main
//   ///
//   ///
//   ///
//   ///
// ////////////////////
//   ///
//   ///
//   ///
//   ///
//   ///
//   ///
//   ///
// }
// //   void main() {
// //     Student student = Student(

// //         // school: school,
// //         studentId: 1,
// //         username: "Kamel",
// //         password: "password123",
// //         enrollmentNo: 12345,
// //         gender: "Male",
// //         email: "john.doe@example.com",
// //         phoneNo: 1234567890,
// //         address: "123 Main St",
// //         classId: 101,
// //         marks: {"mark_science ": 80, "ark_arabc": 76, " mark_math": 90});
// //     Teacher teacher = Teacher(
// //         student: student,
// //         teacherId: 2,
// //         username: "kamel",
// //         password: " kamel123@",
// //         confirmPassword: "kamel123@",
// //         name: "kamel",
// //         age: 20,
// //         gender: " gender",
// //         phoneNo: 07777777777,
// //         address: "address",
// //         email: "email",
// //         classTeacher: " classTeacher");
// //     teacher.enterMarks();

// //     while (true) {
// //       print("1. Sign Up");
// //       print("2. Log In");
// //       print("3. Log Out");
// //       print("4. Exit");

// //       stdout.write("Choose an option (1-4): ");
// //       String choice = stdin.readLineSync()!;

// //       switch (choice) {
// //         case '1':
// //           teacher.signUp();
// //           print("""
// // 1.EnterMarks.
// // 2.GetMarksDetail.
// // 3.PrepareReportCards.""");
// //           String input = stdin.readLineSync()!;
// //           switch (input) {
// //             case '1':
// //               break;
// //           }

// //           break;
// //         case '2':
// //           if (teacher.login()) {
// //             print("You are now logged in.");
// //           }
// //           break;
// //         case '3':
// //           teacher.logout();
// //           break;
// //         case '4':
// //           print("Exit...");
// //           return;
// //         default:
// //           print("Invalid option. Please choose a number between 1 and 4.");
// //       }
// //     }
// //   }
// // }

class Teacher {
  String usernameTeacher = "t";
  String passwordTeacher = "t";
late School school;
  late Student student;
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

//   void addMark() {
//     // عرض قائمة الطلاب
//     print("Select a student by ID:");
//     for (var student in students) {
//       print("ID: ${student.studentId}, Name: ${student.username}");
//     }

//     // الحصول على ID الطالب
//     print("Enter student ID:");
//     int studentId = int.parse(stdin.readLineSync()!);

//     // البحث عن الطالب
//     Student? selectedStudent;
//     for (var student in students) {
//       if (student.studentId == studentId) {
//         selectedStudent = student;
//         break;
//       }
//     }

//     if (selectedStudent != null) {
//       // الحصول على اسم المادة والعلامة
//       print("Enter subject:");
//       String subject = stdin.readLineSync()!;
//       print("Enter mark:");
//       int mark = int.parse(stdin.readLineSync()!);

//       // إضافة العلامة للطالب
//       selectedStudent.marks[subject] = mark;
//       print("Mark added successfully.");
//     } else {
//       print("Student not found.");
//     }
//   }
// }


// // void addMarks(int studentId) {
//    Student? student;
//     try {
//       student = school.studentNames.where((student) => student.studentId == studentId)
//       .first;
//     } catch (e) {
//       student = null;
//     }
//     if (student == null) {
//       print("Student with ID $studentId not found.");
//       return;
//     }
//     print("Entering marks for student: ${student.username}");
//     stdout.write("Enter mark for Arabic: ");
//     int markArabic = int.parse(stdin.readLineSync()!);
//     student.marks['Arabic'] = markArabic;
//     stdout.write("Enter mark for Math: ");
//     int markMath = int.parse(stdin.readLineSync()!);
//     student.marks['Math'] = markMath;
//     stdout.write("Enter mark for Science: ");
//     int markScience = int.parse(stdin.readLineSync()!);
//     student.marks['Science'] = markScience;
//     print("Marks entered successfully for ${student.username}.");
//   }

 void addMark() {
    // عرض قائمة الطلاب
    print("Select a student by ID:");
    for (var student in school.studentNames) {
      print("ID: ${student.studentId}, Name: ${student.username}");
    }

    // الحصول على ID الطالب
    print("Enter student ID:");
    int studentId = int.parse(stdin.readLineSync()!);

    // البحث عن الطالب
    Student? selectedStudent;
    for (var student in school.studentNames) {
      if (student.studentId == studentId) {
        selectedStudent = student;
        break;
      }
    }

    if (selectedStudent != null) {
      // الحصول على اسم المادة والعلامة
      print("Enter subject:");
      String subject = stdin.readLineSync()!;
      print("Enter mark:");
      int mark = int.parse(stdin.readLineSync()!);

      // إضافة العلامة للطالب
      selectedStudent.marks[subject] = mark;
      print("Mark added successfully.");
    } else {
      print("Student not found.");
    }
  }
  void viewstudent(School school) {
    school.printStudents();
  }

  void getMarksDetail() {
    if (student.login()) {
      student.displayMarks();
    }
  }

}
//   void mainMenu() {
//     while (true) {
//       print("1. Sign Up");
//       print("2. Log In");
//       print("3. Log Out");
//       print("4. Exit");

//       stdout.write("Choose an option (1-4): ");
//       String choice = stdin.readLineSync()!;

//       switch (choice) {
//         case '1':
//           signUp();
//           break;
//         case '2':
//           if (login()) {
//             print("You are now logged in.");
//             print("1. Enter Marks");
//             print("2. Get Marks Detail");
//             stdout.write("Choose an option (1-2): ");
//             String subChoice = stdin.readLineSync()!;
//             switch (subChoice) {
//               case '1':
// stdout.write("Enter student ID to enter marks: ");
//   int id = int.parse( stdin.readLineSync()!);
//                 enterMarks(id);
//                 break;
//               case '2':
//                 getMarksDetail();
//                 break;
//               default:
//                 print("Invalid option. Please choose 1 or 2.");
//             }
//           }
//           break;
//         case '3':
//           logout();
//           break;
//         case '4':
//           print("Exit...");
//           return;
//         default:
//           print("Invalid option. Please choose a number between 1 and 4.");
//       }
//     }
//   }   


void main() {
  School school=School();
  Student student = Student(
    studentId: 1,
    username: "Kamel",
    password: "password123",
    enrollmentNo: 12345,
    gender: "Male",
    email: "john.doe@example.com",
    phoneNo: 1234567890,
    address: "123 Main St",
    classId: 101,
    marks: {"Science": 80, "Arabic": 76, "Math": 90},
  );

  Teacher teacher = Teacher(
    student: student,
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

 for (var student in school.studentNames) {
    print("Student ID: ${student.studentId}, Marks: ${student.marks}");
teacher.addMark();
}}