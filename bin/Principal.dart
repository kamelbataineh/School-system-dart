import 'dart:io';
import "array.dart";
import 'Teacher.dart';
import 'class_class.dart';

// import 'Student.dart';
class Principal {
  // Attributes
  String username = "a";
  String password = "a";

  School school;

  // Constructor
  Principal(this.school);

  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  bool login() {
    stdout.write("Enter username (a) : ");
    String inputUsername = stdin.readLineSync()!;
    stdout.write("Enter password (a) : ");
    String inputPassword = stdin.readLineSync()!;
    if (inputUsername == username && inputPassword == password) {
      print("\n--------------------\nLogin successful!\n--------------------");

      print("-------------------------------------");
      print("         |  To-do list  |            ");
      print("-------------------------------------");
      return true;
    } else {
      print("Invalid username or password. Please try again.");
      return false;
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
  void logout() {
    print("Logged out successfully.");
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
  void addNewTeacher() {
    print("\n-------------------------------------");
    while (true) {
      int teacherId;
      while (true) {
        stdout.write("Enter teacher ID: ");
        try {
          teacherId = int.parse(stdin.readLineSync()!);
          bool teacherIdExists = school.teacherNames
              .any((teacher) => teacher.teacherId == teacherId);
          if (teacherIdExists) {
            print("Teacher ID already exists. Please try again.");
          } else {
            break;
          }
        } catch (e) {
          print("Invalid input. Please enter a valid number.");
        }
      }

      stdout.write("Enter username: ");
      String username = stdin.readLineSync()!;

      stdout.write("Enter password: ");
      String password = stdin.readLineSync()!;

      stdout.write("Confirm password: ");
      String confirmPassword = stdin.readLineSync()!;
      if (password != confirmPassword) {
        print("Passwords do not match. Please re-enter the password.");

        stdout.write("Enter password: ");
        password = stdin.readLineSync()!;

        stdout.write("Confirm password: ");
        confirmPassword = stdin.readLineSync()!;

        if (password != confirmPassword) {
          print("Passwords still do not match. Please try again.");
          continue;
        }
      }

      stdout.write("Enter name: ");
      String name = stdin.readLineSync()!;

      stdout.write("Enter age: ");
      int age;
      while (true) {
        try {
          age = int.parse(stdin.readLineSync()!);
          if (age > 0) {
            break;
          } else {
            print("Age must be a positive number.");
          }
        } catch (e) {
          print("Invalid input. Please enter a valid age.");
        }
      }

      stdout.write("Enter address: ");
      String address = stdin.readLineSync()!;

      stdout.write("Enter class teacher: ");
      String classTeacher = stdin.readLineSync()!;

      String gender;
      while (true) {
        stdout.write("Enter gender (male/female): ");
        gender = stdin.readLineSync()!.toLowerCase();
        if (gender == 'male' || gender == 'female') {
          break;
        } else {
          print("Invalid input. Please enter 'male' or 'female'.");
        }
      }

      int phoneNo;
      while (true) {
        stdout.write("Enter phone number (10-15 digits): ");
        String phoneNoInput = stdin.readLineSync()!;
        if (phoneNoInput.length >= 10 && phoneNoInput.length <= 15) {
          try {
            phoneNo = int.parse(phoneNoInput);
            break;
          } catch (e) {
            print("Invalid input. Please enter a valid phone number.");
          }
        } else {
          print("Phone number must be between 10 and 15 digits.");
        }
      }

      String email;
      while (true) {
        stdout.write("e.g.,example@domain.com : ");
        email = stdin.readLineSync()!;
        if (email.contains('@') &&
            email.contains('.') &&
            email.contains('com')) {
          break;
        } else {
          print("Invalid email format. Please enter a valid email.");
        }
      }

      

        school.addTeacher(
          teacherId: teacherId,
          confirmPassword: confirmPassword,
          username: username,
          password: password,
          name: name,
          age: age,
          gender: gender,
          phoneNo: phoneNo,
          address: address,
          email: email,
          classTeacher: classTeacher,
        );
        print("Teacher [$username] added successfully.");
        break;
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
  void addNewStudent() {
    while (true) {
      int studentId;
      while (true) {
        stdout.write("Enter student ID: ");
        try {
          studentId = int.parse(stdin.readLineSync()!);
          if (school.studentNames
              .any((student) => student.studentId == studentId)) {
            print("Student ID already exists. Please try again.");
          } else {
            break;
          }
        } catch (e) {
          print("Invalid input. Please enter a valid number.");
        }
      }

      stdout.write("Enter username: ");
      String username = stdin.readLineSync()!;

      if (school.studentNames.any((student) => student.username == username)) {
        print("Username already exists. Please try again.");
        continue;
      }

      stdout.write("Enter address: ");
      String address = stdin.readLineSync()!;

      stdout.write("Enter password: ");
      String password = stdin.readLineSync()!;

      int enrollmentNo;
      while (true) {
        stdout.write("Enter enrollment number: ");
        try {
          enrollmentNo = int.parse(stdin.readLineSync()!);
          break;
        } catch (e) {
          print("Invalid input. Please enter a valid enrollment number.");
        }
      }

      String gender;
      while (true) {
        stdout.write("Enter gender (male/female): ");
        gender = stdin.readLineSync()!.toLowerCase();
        if (gender == 'male' || gender == 'female') {
          break;
        } else {
          print("Invalid input. Please enter 'male' or 'female'.");
        }
      }

      String email;
      while (true) {
        stdout.write("e.g.,example@domain.com : ");
        email = stdin.readLineSync()!;
        if (email.contains('@') &&
            email.contains('.') &&
            email.contains('com')) {
          break;
        } else {
          print("Invalid email format. Please enter a valid email.");
        }
      }

      int phoneNo;
      while (true) {
        stdout.write("Enter phone number (10-15 digits): ");
        String phoneNoInput = stdin.readLineSync()!;
        if (phoneNoInput.length >= 10 && phoneNoInput.length <= 15) {
          try {
            phoneNo = int.parse(phoneNoInput);
            break;
          } catch (e) {
            print("Invalid input. Please enter a valid phone number.");
          }
        } else {
          print("Phone number must be between 10 and 15 digits.");
        }
      }

      int classId;
      while (true) {
        stdout.write("Enter class ID: ");
        try {
          classId = int.parse(stdin.readLineSync()!);
          break;
        } catch (e) {
          print("Invalid input. Please enter a valid number.");
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
      school.addStudent(
        studentId: studentId,
        username: username,
        password: password,
        enrollmentNo: enrollmentNo,
        gender: gender,
        email: email,
        phoneNo: phoneNo,
        address: address,
        classId: classId,
      );
      print("Student [$username] added successfully!");
      break;
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
  void viewstudent() {
    school.printStudents();
  }

  void viewteacher() {
    school.printTeachers();
  }

  void viewclasss() {
    school.printClasss();
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
  void modifyTeacher(int id) {
    while (true) {
      print("\n-------------------------------------");
      print("         |  To-do list  |            ");
      print("""-------------------------------------
1 - Update teacher information     .
2 - Delete teacher                 .
3 - Exit....                       .
-------------------------------------
""");
      stdout.write("Enter number: ");
      String input = stdin.readLineSync()!;

      switch (input) {
        case "1": // Update teacher
          {
            int index = school.teacherNames
                .indexWhere((teacher) => teacher.teacherId == id);

            if (index == -1) {
              print("Teacher with ID $id not found in the school.");
              return;
            }

            stdout.write(
                "Do you want to update the information for teacher with ID $id? (yes/no): ");
            String? confirm = stdin.readLineSync();

            if (confirm == null || confirm.toLowerCase() != 'yes') {
              print("Teacher with ID $id was not updated.");
              return;
            }

            while (true) {
              print("\n-------------------------------------");
              print("         |  To-do list  |            ");
              print("""-------------------------------------
    What information would you like to update?
    1  -  Name               .      
    2  -  Username           . 
    3  -  Password           .
    4  -  Confirm Password   .
    5  -  Age                .
    6  -  Gender             .
    7  -  Phone Number       .
    8  -  Address            .
    9  -  Email              .
    10 -  Class Teacher      .
    11 -  Update All         .
    12 -  Exit....           .
    -------------------------------------

    """);

              stdout.write("Enter your choice (1-12): ");
              String? choice = stdin.readLineSync();

              switch (choice) {
                case '1': // Update Name
                  stdout.write("Enter new name: ");
                  String? newName = stdin.readLineSync();
                  if (newName != null && newName.isNotEmpty) {
                    school.teacherNames[index].name = newName;
                    print("Name updated successfully.");
                  } else {
                    print("Invalid input. The name cannot be empty.");
                  }
                  break;

                case '2': // Update Username
                  stdout.write("Enter new username: ");
                  String? newUsername = stdin.readLineSync();
                  if (newUsername != null && newUsername.isNotEmpty) {
                    school.teacherNames[index].username = newUsername;
                    print("Username updated successfully.");
                  } else {
                    print("Invalid input. The username cannot be empty.");
                  }
                  break;

                case '3': // Update Password
                  stdout.write("Enter new password: ");
                  String? newPassword = stdin.readLineSync();
                  if (newPassword != null && newPassword.isNotEmpty) {
                    school.teacherNames[index].password = newPassword;
                    print("Password updated successfully.");
                  } else {
                    print("Invalid input. The password cannot be empty.");
                  }
                  break;

                case '4': // Update Confirm Password
                  stdout.write("Enter new confirm password: ");
                  String? newConfirmPassword = stdin.readLineSync();
                  if (newConfirmPassword != null &&
                      newConfirmPassword.isNotEmpty) {
                    school.teacherNames[index].confirmPassword =
                        newConfirmPassword;
                    print("Confirm password updated successfully.");
                  } else {
                    print(
                        "Invalid input. The confirm password cannot be empty.");
                  }
                  break;

                case '5': // Update Age
                  stdout.write("Enter new age: ");
                  String? ageStr = stdin.readLineSync();
                  int? newAge = int.tryParse(ageStr ?? '');
                  if (newAge != null) {
                    school.teacherNames[index].age = newAge;
                    print("Age updated successfully.");
                  } else {
                    print("Invalid input. Please enter a valid age.");
                  }
                  break;

                case '6': // Update Gender
                  stdout.write("Enter new gender: ");
                  String? newGender = stdin.readLineSync();
                  if (newGender != null && newGender.isNotEmpty) {
                    school.teacherNames[index].gender = newGender;
                    print("Gender updated successfully.");
                  } else {
                    print("Invalid input. The gender cannot be empty.");
                  }
                  break;

                case '7': // Update Phone Number
                  stdout.write("Enter new phone number: ");
                  String? phoneStr = stdin.readLineSync();
                  int? newPhoneNumber = int.tryParse(phoneStr ?? '');
                  if (newPhoneNumber != null) {
                    school.teacherNames[index].phoneNo = newPhoneNumber;
                    print("Phone number updated successfully.");
                  } else {
                    print("Invalid input. Please enter a valid phone number.");
                  }
                  break;

                case '8': // Update Address
                  stdout.write("Enter new address: ");
                  String? newAddress = stdin.readLineSync();
                  if (newAddress != null && newAddress.isNotEmpty) {
                    school.teacherNames[index].address = newAddress;
                    print("Address updated successfully.");
                  } else {
                    print("Invalid input. The address cannot be empty.");
                  }
                  break;

                case '9': // Update Email
                  stdout.write("Enter new email: ");
                  String? newEmail = stdin.readLineSync();
                  if (newEmail != null && newEmail.isNotEmpty) {
                    school.teacherNames[index].email = newEmail;
                    print("Email updated successfully.");
                  } else {
                    print("Invalid input. The email cannot be empty.");
                  }
                  break;

                case '10': // Update Class Teacher
                  stdout.write("Enter new class teacher: ");
                  String? newClassTeacher = stdin.readLineSync();
                  if (newClassTeacher != null && newClassTeacher.isNotEmpty) {
                    school.teacherNames[index].classTeacher = newClassTeacher;
                    print("Class teacher updated successfully.");
                  } else {
                    print("Invalid input. The class teacher cannot be empty.");
                  }
                  break;

                case '11': // Update All
                  stdout.write("Enter new name: ");
                  String? allName = stdin.readLineSync();
                  stdout.write("Enter new username: ");
                  String? allUsername = stdin.readLineSync();
                  stdout.write("Enter new password: ");
                  String? allPassword = stdin.readLineSync();
                  stdout.write("Enter new confirm password: ");
                  String? allConfirmPassword = stdin.readLineSync();
                  stdout.write("Enter new age: ");
                  String? allAgeStr = stdin.readLineSync();
                  int? allAge = int.tryParse(allAgeStr ?? '');
                  stdout.write("Enter new gender: ");
                  String? allGender = stdin.readLineSync();
                  stdout.write("Enter new phone number: ");
                  String? allPhoneStr = stdin.readLineSync();
                  int? allPhoneNumber = int.tryParse(allPhoneStr ?? '');
                  stdout.write("Enter new address: ");
                  String? allAddress = stdin.readLineSync();
                  stdout.write("Enter new email: ");
                  String? allEmail = stdin.readLineSync();
                  stdout.write("Enter new class teacher: ");
                  String? allClassTeacher = stdin.readLineSync();

                  if (allName != null && allName.isNotEmpty) {
                    school.teacherNames[index].name = allName;
                  }
                  if (allUsername != null && allUsername.isNotEmpty) {
                    school.teacherNames[index].username = allUsername;
                  }
                  if (allPassword != null && allPassword.isNotEmpty) {
                    school.teacherNames[index].password = allPassword;
                  }
                  if (allConfirmPassword != null &&
                      allConfirmPassword.isNotEmpty) {
                    school.teacherNames[index].confirmPassword =
                        allConfirmPassword;
                  }
                  if (allAge != null) {
                    school.teacherNames[index].age = allAge;
                  }
                  if (allGender != null && allGender.isNotEmpty) {
                    school.teacherNames[index].gender = allGender;
                  }
                  if (allPhoneNumber != null) {
                    school.teacherNames[index].phoneNo = allPhoneNumber;
                  }
                  if (allAddress != null && allAddress.isNotEmpty) {
                    school.teacherNames[index].address = allAddress;
                  }
                  if (allEmail != null && allEmail.isNotEmpty) {
                    school.teacherNames[index].email = allEmail;
                  }
                  if (allClassTeacher != null && allClassTeacher.isNotEmpty) {
                    school.teacherNames[index].classTeacher = allClassTeacher;
                  }

                  print("All information updated successfully.");
                  break;

                case '12':
                  print("Exiting update menu.");
                  return;

                default:
                  print(
                      "Invalid choice. Please enter a number between 1 and 12.");
              }
            }
          }
        case "2": // Delete teacher
          {
            int index = school.teacherNames
                .indexWhere((teacher) => teacher.teacherId == id);
            if (index != -1) {
              stdout.write(
                  "Do you want to remove the teacher with ID $id? (yes/no): ");
              String? confirm = stdin.readLineSync();
              if (confirm != null && confirm.toLowerCase() == 'yes') {
                school.teacherNames.removeAt(index);
                print("Teacher with ID $id has been removed.");
              } else if (confirm != null && confirm.toLowerCase() == 'no') {
                print("Teacher with ID $id was not removed.");
              } else {
                print("Invalid input. Please enter 'yes' or 'no'.");
              }
            } else {
              print("Teacher with ID $id not found in the school.");
            }
          }
          break;
        case "3":
          return;
        default:
          print("Invalid choice. Please enter a valid option.");
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
  void modifyStudent(int id) {
    while (true) {
      print("\n-------------------------------------");
      print("         |  To-do list  |            ");
      print("""-------------------------------------
1  -  Update student information  .
2  -  Delete student              .
3  -  Exit...                     .
-------------------------------------
""");
      stdout.write("Enter number: ");
      String input = stdin.readLineSync()!;

      switch (input) {
        case "1": // Update student
          {
            int index = school.studentNames
                .indexWhere((student) => student.studentId == id);

            if (index == -1) {
              print("Student with ID $id not found in the school.");
              return;
            }

            stdout.write(
                "Do you want to update the information for student with ID $id? (yes/no): ");
            String? confirm = stdin.readLineSync();

            if (confirm == null || confirm.toLowerCase() != 'yes') {
              print("Student with ID $id was not updated.");
              return;
            }

            while (true) {
              print("\n-------------------------------------");
              print("         |  To-do list  |            ");
              print("""-------------------------------------
    What information would you like to update?
    1  - Username        .
    2  - Phone Number    .
    3  - Class           .
    4  - Address         . 
    5  - Gender          . 
    6  - Update All      . 
    7  - Exit...         . 
-------------------------------------
    """);

              stdout.write("Enter your choice (1-7): ");
              String? choice = stdin.readLineSync();
              print('------------------------------------');

              switch (choice) {
                case '1': // Update Username
                  stdout.write("Enter new username: ");
                  String? newUsername = stdin.readLineSync();
                  if (newUsername != null && newUsername.isNotEmpty) {
                    school.studentNames[index].username = newUsername;
                    print("Username updated successfully.");
                  } else {
                    print("Invalid input. The username cannot be empty.");
                  }
                  break;

                case '2': // Update Phone Number
                  stdout.write("Enter new phone number: ");
                  String? phoneStr = stdin.readLineSync();
                  int? newPhoneNumber = int.tryParse(phoneStr ?? '');
                  if (newPhoneNumber != null) {
                    school.studentNames[index].phoneNo = newPhoneNumber;
                    print("Phone number updated successfully.");
                  } else {
                    print("Invalid input. Please enter a valid phone number.");
                  }
                  break;

                case '3': // Update Class
                  stdout.write("Enter new class ID: ");
                  String? classIdStr = stdin.readLineSync();
                  int? newClassId = int.tryParse(classIdStr ?? '');
                  if (newClassId != null) {
                    school.studentNames[index].classId = newClassId;
                    print("Class ID updated successfully.");
                    print('------------------------------------');
                  } else {
                    print("Invalid input. Please enter a valid class ID.");
                  }
                  break;

                case '4': // Update Address
                  stdout.write("Enter new address: ");
                  String? newAddress = stdin.readLineSync();
                  if (newAddress != null && newAddress.isNotEmpty) {
                    school.studentNames[index].address = newAddress;
                    print("Address updated successfully.");
                    print('------------------------------------');
                  } else {
                    print("Invalid input. The address cannot be empty.");
                  }
                  break;

                case '5': // Update Gender
                  stdout.write("Enter new gender: ");
                  String? newGender = stdin.readLineSync();
                  if (newGender != null && newGender.isNotEmpty) {
                    school.studentNames[index].gender = newGender;
                    print("Gender updated successfully.");
                    print('------------------------------------');
                  } else {
                    print("Invalid input. The gender cannot be empty.");
                  }
                  break;

                case '6': // Update All
                  stdout.write("Enter new username: ");
                  String? allUsername = stdin.readLineSync();
                  stdout.write("Enter new phone number: ");
                  String? allPhoneStr = stdin.readLineSync();
                  int? allPhoneNumber = int.tryParse(allPhoneStr ?? '');
                  stdout.write("Enter new class ID: ");
                  String? allClassIdStr = stdin.readLineSync();
                  int? allClassId = int.tryParse(allClassIdStr ?? '');
                  stdout.write("Enter new address: ");
                  String? allAddress = stdin.readLineSync();
                  stdout.write("Enter new gender: ");
                  String? allGender = stdin.readLineSync();

                  if (allUsername != null && allUsername.isNotEmpty) {
                    school.studentNames[index].username = allUsername;
                  }
                  if (allPhoneNumber != null) {
                    school.studentNames[index].phoneNo = allPhoneNumber;
                  }

                  if (allClassId != null) {
                    school.studentNames[index].classId = allClassId;
                  }
                  if (allAddress != null && allAddress.isNotEmpty) {
                    school.studentNames[index].address = allAddress;
                  }
                  if (allGender != null && allGender.isNotEmpty) {
                    school.studentNames[index].gender = allGender;
                  }

                  print("All information updated successfully.");
                  print('------------------------------------');
                  break;

                case '7':
                  print("Exiting update menu.");
                  print('------------------------------------');

                  return;

                default:
                  print(
                      "Invalid choice. Please enter a number between 1 and 8.");
                  break;
              }
            }
          }

        case "2": // Delete student
          {
            int index = school.studentNames
                .indexWhere((student) => student.studentId == id);
            if (index != -1) {
              stdout.write(
                  "Do you want to remove the student with ID $id? (yes/no): ");
              String? confirm = stdin.readLineSync();
              if (confirm != null && confirm.toLowerCase() == 'yes') {
                school.studentNames.removeAt(index);
                print("Student with ID $id has been removed.");
              } else if (confirm != null && confirm.toLowerCase() == 'no') {
                print("Student with ID $id was not removed.");
              } else {
                print("Invalid input. Please enter 'yes' or 'no'.");
              }
            } else {
              print("Student with ID $id not found in the school.");
            }
          }
          break;
        case "3":
          return;
        default:
          print("Invalid choice. Please enter a valid option.");
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
  void addNewClass() {
    while (true) {
      int classId;
      while (true) {
        stdout.write("Enter class ID: ");
        try {
          classId = int.parse(stdin.readLineSync()!);
          print(classId);
          break;
        } catch (e) {
          print("return number.");
        }
      }

      stdout.write("Enter class name: ");
      String className = stdin.readLineSync()!;

      stdout.write("Enter teacher name: ");
      String teacherName = stdin.readLineSync()!;

      bool classIdExists = school.classes.any((cls) => cls.classId == classId);
      bool classNameExists =
          school.classes.any((cls) => cls.className == className);

      if (classIdExists || classNameExists) {
        print("Class ID or Class Name already exists. Please try again.");
      } else {
        school.addClass(
          classId: classId,
          className: className,
          teacherName: teacherName,
        );
        break;
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
  void modifyClass(
    int id,
  ) {
    while (true) {
      print("\n-------------------------------------");
      print("         |  To-do list  |            ");
      print("""-------------------------------------
1 -  update name .
2 -  delete neme .
3 -  Eixt        .
-------------------------------------
""");
      stdout.write("enter number:");
      String input = stdin.readLineSync()!;
      switch (input) {
        case "1":
          {
            int index =
                school.classes.indexWhere((classs) => classs.classId == id);
            if (index != -1) {
              stdout.write(
                  "Do you want to modify the class name for class with ID $id? (yes/no): ");
              String? input = stdin.readLineSync();
              if (input != null && input.toLowerCase() == 'yes') {
                stdout.write("Enter new name for the class: ");
                String? newName = stdin.readLineSync();
                if (newName != null && newName.isNotEmpty) {
                  school.classes[index].className = newName;
                  print("Class with ID $id has been modified.");
                  return;
                } else {
                  print(
                      "Invalid input. The name cannot be empty. Please try again.");
                }
              } else if (input != null && input.toLowerCase() == 'no') {
                print("Class with ID $id was not modified.");
                return;
              } else {
                print("Invalid input. Please enter 'yes' or 'no'.");
              }
            } else {
              print("Class with ID $id not found in the school.");
              break;
            }
            return;
          }
        case "2":
          {
            int index =
                school.classes.indexWhere((classs) => classs.classId == id);
            if (index != -1) {
              stdout.write(
                  "Do you want to remove the class with ID $id? (yes/no): ");
              String? input = stdin.readLineSync();
              if (input != null && input.toLowerCase() == 'yes') {
                school.classes
                    .removeAt(index); 
                print("Class with ID $id has been removed.");
                return;
              } else if (input != null && input.toLowerCase() == 'no') {
                print("Class with ID $id was not removed.");
                return;
              } else {
                print("Invalid input. Please enter 'yes' or 'no'.");
              }
            } else {
              print("Class with ID $id not found in the school.");
              break;
            }
            return;
          }
        case "3":
          return;
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
  void prepareReportCards() {
    print("Preparing Report Cards...\n");

    for (var student in school.studentNames) {
      print("Student ID: ${student.studentId}");
      print("Name: ${student.username}");
      print("Class ID: ${student.classId}");

      var studentClass = school.classes.firstWhere(
          (classObj) => classObj.classId == student.classId,
          orElse: () =>
              Class(classId: -1, className: "Unknown", teacherName: "Unknown"));

      print("Class Name: ${studentClass.className}");

      var teacher = school.teacherNames.firstWhere(
          (teacher) => teacher.classTeacher == studentClass.className,
          orElse: () => Teacher(
              student: school.studentNames,
              teacherId: -1,
              username: "Unknown",
              password: "",
              confirmPassword: "",
              name: "Unknown",
              age: -1,
              gender: "",
              phoneNo: -1,
              address: "",
              email: "",
              classTeacher: "Unknown"));

      print("Teacher Name: ${teacher.name}");
      print("+++++++++++++");
      print("Marks:");
      student.marks.forEach((subject, mark) {
        print("$subject: $mark");
      });
      print("------------");
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
  void prepare_Report_Cards_index(int id) {
    int index =
        school.studentNames.indexWhere((student) => student.studentId == id);

    if (index != -1) {
      school.studentNames[index].username;
      print("Student with ID $id has been modified.");
      var student = school.studentNames[index];
      print("Preparing Report Card for Student ID: ${student.studentId}\n");
      print("Student ID: ${student.studentId}");
      print("Name: ${student.username}");
      print("Class ID: ${student.classId}");
      var studentClass = school.classes.firstWhere(
          (classObj) => classObj.classId == student.classId,
          orElse: () =>
              Class(classId: -1, className: "Unknown", teacherName: "Unknown"));
      print("Class Name: ${studentClass.className}");
      var teacher = school.teacherNames.firstWhere(
          (teacher) => teacher.classTeacher == studentClass.className,
          orElse: () => Teacher(
              student: school.studentNames,
              teacherId: -1,
              username: "kamel",
              password: "",
              confirmPassword: "",
              name: "ali",
              age: -1,
              gender: "",
              phoneNo: -1,
              address: "",
              email: "",
              classTeacher: "two"));

      print("Teacher Name: ${teacher.name}");
      print("+++++++++++++");
      print("Marks:");
      student.marks.forEach((subject, mark) {
        print("$subject: $mark");
      });
      print("------------");
    } else {
      print("Student with ID $id not found in the school.");
    }
  }
}
////////////////////
  ///
  ///
  ///
  ///
  ///
//////           main
  ///
  ///
  ///
  ///
////////////////////
// void main() {
//   School school = School();

//   //Student student=Student(studentId: 2, username: "usernam", password: "www", enrollmentNo: 3, gender:" gender", email:" email", phoneNo:3, address: "address", classId: 2);
//   Principal principal = Principal(school);
//   int classId = int.parse(stdin.readLineSync()!);
//   principal.modifyTeacher(classId);

//   print('Enter a valid index between 1 and ${school.studentNames.length}:');
//   int index = int.parse(stdin.readLineSync()!);

//   if (index < 1 || index > school.studentNames.length) {
//     print('Invalid index. Please provide a valid index.');
//   } else {
//     principal.prepare_Report_Cards_index(index);
//     print("-------------------------------------");
//  }
//   print("Log In:");
//   if (!principal.login()) {
//     print("Login failed. Exiting...");
//     return;
//   }

//   while (true) {
//     print("""
//   1. Log Out.
//   2. Add New Teacher.
//   3. Add New Student.
//   4.view student.
//   5.view teacher.
//   6. Exit.
// """);

//     stdout.write("Choose an option (1-6): ");
//     String choice = stdin.readLineSync()!;

//     switch (choice) {
//       case '1':
//         principal.logout();
//         break;
//       case '2':
//         principal.addNewTeacher();
//         break;
//       case '3':
//         principal.addNewStudent();
//         break;
//       case '4':
//         principal.viewstudent();
//         break;
//       case '5':
//         principal.viewteacher();
//         break;
//       case '6':
//         principal.viewteacher();
//         stdout.write("remove for teacher id?");
//         int input = int.parse(stdin.readLineSync()!);
//         principal.modifyTeacher(input);
//         break;

//       case "7":
//         return;
//     }
//   }
//}

