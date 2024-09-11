import 'Principal.dart';
import 'array.dart';
import 'dart:io';

void principal() {
  School school = School();
  Principal principal = Principal(school);
  print("Log In:");
  if (!principal.login()) {
    print("Login failed. Exiting...");
    return;
  }

  while (true) {
    print("""
  1  -  Log Out                     .
  2  -  Add New Teacher             .
  3  -  Add New Student             .
  4  -  view student                .
  5  -  view teacher                .
  6  -  view class                  .
  7  -  Student By Index            .
  8  -  Teacher By Index            .
  9  -  modify Teacher              .
  10 -  modify student              .
  11 -  modify Class                . 
  12 -  add new Class               .
  13 -  Prepare Report Cards        .
  14 -  prepare_Report_Cards_index  .
  15 -  Exit.....                   .
                                    .
..................................... 
""");

    stdout.write("Choose an option (1-15): ");
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        principal.logout();
        return;
      case '2':
        principal.viewteacher();
        principal.addNewTeacher();
        print("-------------------------------------");

        break;
      case '3':
        principal.viewstudent();
        principal.addNewStudent();
        print("-------------------------------------");

        break;
      case '4':
        principal.viewstudent();
        print("-------------------------------------");

        break;
      case '5':
        principal.viewteacher();

        print("-------------------------------------");
        break;
      case '6':
        principal.viewclasss();
        print("-------------------------------------");
        break;

      case '7':
        while (true) {
          print(
              'Enter a valid index between 1 and ${school.studentNames.length}:');
          int index = int.parse(stdin.readLineSync()!);

          if (index < 1 || index > school.studentNames.length) {
            print('Invalid index. Please provide a valid index.');
          } else {
            school.printStudentByIndex(index);
            print("-------------------------------------");
            break;
          }
        }
        break;
      case '8':
        while (true) {
          print(
              'Enter a valid index between 1 and ${school.teacherNames.length}:');
          int index = int.parse(stdin.readLineSync()!);

          if (index < 1 || index > school.teacherNames.length) {
            print('Invalid index. Please provide a valid index.');
          } else {
            school.printTeacherByIndex(index);
            print("-------------------------------------");
            break;
          }
        }
        break;
      case '9':
        principal.viewteacher();
        print('\n------------------------------------');
        stdout.write("Teacher id?");
        int input = int.parse(stdin.readLineSync()!);
        principal.modifyTeacher(input);
        break;
      case '10':
        principal.viewstudent();
        print('\n------------------------------------');
        stdout.write("Student id?");
        int input = int.parse(stdin.readLineSync()!);
        principal.modifyStudent(input);
        break;
      case '11':
        principal.viewclasss();
        print('\n------------------------------------');
        stdout.write("Class id?");
        int input = int.parse(stdin.readLineSync()!);
        principal.modifyClass(input);
        break;
      case '12':
        principal.viewclasss();
        print("\n-------------------------------------");
        principal.addNewClass();
        print("\n\n-------------------------------------");
        break;
      case '13':
        principal.prepareReportCards();
        break;
      case '14':
        while (true) {
          print(
              'Enter a valid index between 1 and ${school.studentNames.length}:');
          int index = int.parse(stdin.readLineSync()!);

          if (index < 1 || index > school.studentNames.length) {
            print('Invalid index. Please provide a valid index.');
          } else {
            principal.prepare_Report_Cards_index(index);
            print("-------------------------------------");
          }
          break;
        }
      case '15':
        print("Eixt...");
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
void main(List<String> args) {
  principal();
}