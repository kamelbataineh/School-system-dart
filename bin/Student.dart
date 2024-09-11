import 'dart:io';

///
///
///
///
///
///
///
///
class Student {
  late int studentId;
  late String username;
  late String password;
  late int enrollmentNo;
  late String gender;
  late String email;
  late int phoneNo;
  late String address;
  late int classId;
  Map<String, int> marks;
  Map<String, String> users = {
    "kamel": "123",
  };

  Student({
    required this.studentId,
    required this.username,
    required this.password,
    required this.enrollmentNo,
    required this.gender,
    required this.email,
    required this.phoneNo,
    required this.address,
    required this.classId,
    Map<String, int>? marks,
  }) : marks = marks ?? {};

  ///
  ///
  ///
  ///
  ///   void signUp()
  ///
  ///
  ///
  ///
  ///

  void signUp() {
    stdout.write("Enter username: ");
    String username = stdin.readLineSync()!;
    if (users.containsKey(username)) {
      print("Username already exists. Please choose a different username.");
      return;
    }

    String email;
    while (true) {
      stdout.write("Enter email: ");
      email = stdin.readLineSync()!;
      if (email.contains('@') && email.contains('.') && email.contains('com')) {
        break;
      } else {
        print("Invalid email format. Please enter a valid email.");
      }
    }

    stdout.write("Enter password: ");
    String password = stdin.readLineSync()!;
    stdout.write("Confirm password: ");
    String confirmPassword = stdin.readLineSync()!;
    if (password != confirmPassword) {
      print("Passwords do not match. Please try again.");
      return;
    }

    users[username] = password;
    print("Sign up successful!\n");
  }

  bool login() {
    while (true) {
      stdout.write("Enter username: ");
      String inputUsername = stdin.readLineSync()!;

      stdout.write("Enter password: ");
      String inputPassword = stdin.readLineSync()!;

      if (users.containsKey(inputUsername) &&
          users[inputUsername] == inputPassword) {
        print("Login successful!\n");
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

  ///
  ///
  ///
  ///
  ///  void displayMarks()
  ///
  ///
  ///
  ///
  ///
  void displayMarks() {
    print('Marks for $username:');
    marks.forEach((subject, mark) {
      print('Subject: $subject, Mark: $mark');
    });
  }

  ///
  ///
  ///
  ///
  ///  void logout()
  ///
  ///
  ///
  ///
  ///
  void logout() {
    print("Logged out successfully.");
  }

  ///
  ///
  ///
  ///
  ///  void viewReportCard()
  ///
  ///
  ///
  ///
  ///
  void viewReportCard() {
    // ترويسة التقرير
    print('''
════════════════════════════════════════
    Report Card for Student: $username
════════════════════════════════════════
''');
    print('Enrollment Number : $enrollmentNo');
    print('Gender             : $gender');
    print('Email              : $email');
    print('Phone Number       : $phoneNo');
    print('Address            : $address');
    print('Class ID           : $classId');
    print('\nMarks:');
    if (marks.isEmpty) {
      print('  No marks recorded.');
    } else {
      marks.forEach((subject, mark) {
        print('  ${subject.padRight(15)}: ${mark.toString().padLeft(3)}');
      });
    }
    print('════════════════════════════════════════');
  }

  ///
  ///
  ///
  ///
  ///  void showOptions()
  ///
  ///
  ///
  ///
  ///
  void showOptions() {
    while (true) {
      print("""
1. View Report Card
2. Logout
""");
      stdout.write("Enter your choice: ");
      String choice = stdin.readLineSync()!;

      switch (choice) {
        case "1":
          viewReportCard();
          break;
        case "2":
          logout();
          return;
        default:
          print("Invalid choice. Please enter '1' or '2'.");
      }
    }
  }
}
