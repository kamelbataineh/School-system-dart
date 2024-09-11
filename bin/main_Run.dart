import 'dart:io';
import 'main-teacher.dart';
import 'main-principal.dart';
import 'main-student.dart';
///
///
///
///
///
///
///
void main(List<String> args) {
  while (true) {   
    print("\n-------------------------------------");
    print("         |    User List    |         ");
    print("""-------------------------------------
1.Admin   .
2.Teacher .
3.Student .
4.Exit    .
-------------------------------------""");
    stdout.write("Select the user type by entering the number : ");
    String input = stdin.readLineSync()!;
    print("-------------------------------------");
    switch (input) {
      case "1":
        principal();
        print("-------------------------------------");
        break;
      case "2":
        teacher();
        print("-------------------------------------");
        break;
      case "3":
        student();
        print("-------------------------------------");
        break;
      case "4":
        print("Exit........");
        print("-------------------------------------");

        return;
      default:
        stdout.write("Choose an option (1-4): ");
        break;
    }
  }
}
