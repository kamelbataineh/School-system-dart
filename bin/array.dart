import 'Student.dart';
import 'Teacher.dart';
import 'class_class.dart';
import 'dart:io';

class School {
  List<Teacher> teacherNames = [
    Teacher(
      student: [
        Student(
          studentId: 1,
          username: "Kamel",
          password: "password123",
          enrollmentNo: 12345,
          gender: "Male",
          email: "john.doe@example.com",
          phoneNo: 1234567890,
          address: "123 Main St",
          classId: 101,
        ),
      ],
      teacherId: 1,
      username: 'john_doe',
      password: 'password1',
      confirmPassword: 'password1',
      name: 'John Doe',
      age: 35,
      gender: 'Male',
      phoneNo: 123456789,
      address: '789 Street, City',
      email: 'john.doe@example.com',
      classTeacher: 'Class A',
    ),
    Teacher(
      student: [
        Student(
          studentId: 2,
          username: "Sara",
          password: "password456",
          enrollmentNo: 67890,
          gender: "Female",
          email: "sara@example.com",
          phoneNo: 9876543210,
          address: "456 Avenue, City",
          classId: 2,
        ),
      ],
      teacherId: 2,
      username: 'jane_doe',
      password: 'password2',
      confirmPassword: 'password2',
      name: 'Jane Doe',
      age: 30,
      gender: 'Female',
      phoneNo: 987654321,
      address: '987 Avenue, City',
      email: 'jane.doe@example.com',
      classTeacher: 'Class B',
    ),
  ];

  ///
  ///
  ///
  ///
  ///
  ///
  List<Student> studentNames = [
    Student(
        studentId: 1,
        username: 'Kamel',
        password: 'password123',
        enrollmentNo: 12345,
        gender: 'Male',
        email: 'john.doe@example.com',
        phoneNo: 1234567890,
        address: '123 Main St',
        classId: 101),
    Student(
        studentId: 2,
        username: 'Sara',
        password: 'password456',
        enrollmentNo: 67890,
        gender: 'Female',
        email: 'sara@example.com',
        phoneNo: 9876543210,
        address: '456 Avenue, City',
        classId: 2),
  ];

  ///
  ///
  ///
  ///
  ///
  List<Class> classes = [
    Class(
      classId: 1,
      className: "A_class",
      teacherName: "ale",
    )
  ];

////////////////////
  ///
  ///
  ///
  ///
  ///
//////           add student
  ///
  ///
  ///
  ///
////////////////////
  void addStudent({
    required int studentId,
    required String username,
    required String password,
    required int enrollmentNo,
    required String gender,
    required String email,
    required int phoneNo,
    required String address,
    required int classId,
  }) {
    studentNames.add(Student(
      studentId: studentId,
      username: username,
      password: password,
      enrollmentNo: enrollmentNo,
      gender: gender,
      email: email,
      phoneNo: phoneNo,
      address: address,
      classId: classId,
    ));
  }

////////////////////
  ///
  ///
  ///
  ///
  ///
//////           add teacher
  ///
  ///
  ///
  ///
////////////////////
  void addTeacher({
    required int teacherId,
    required String username,
    required String password,
    required String confirmPassword,
    required String name,
    required int age,
    required String gender,
    required int phoneNo,
    required String address,
    required String email,
    required String classTeacher,
  }) {
    if (password != confirmPassword) {
      print("Passwords do not match. Please try again.");
      return;
    }

    bool teacherIdExists =
        teacherNames.any((teacher) => teacher.teacherId == teacherId);
    bool usernameExists =
        teacherNames.any((teacher) => teacher.username == username);

    if (teacherIdExists || usernameExists) {
      print("Teacher ID or Username already exists. Please try again.");
      return;
    }
  }

////////////////////
  ///
  ///
  ///
  ///
  ///
//////           add class
  ///
  ///
  ///
  ///
////////////////////
  void addClass({
    required int classId,
    required String className,
    required String teacherName,
  }) {
    classes.add(Class(
      classId: classId,
      className: className,
      teacherName: teacherName,
    ));
    print("-------------------------------------");
    print("Class $className added.");
    print("-------------------------------------");
  }

 
////////////////////
  ///
  ///
  ///
  ///
  ///
/////////       print ,student ,teacher ,class and [index]
  ///
  ///
  ///
  ///
  ///
////////////////////
  
  void printStudents() {
    print("\nStudents:\n");
    print("| No. | Username  | Student ID |");
    print("|-----|-----------|------------|");

    for (int i = 0; i < studentNames.length; i++) {
      String number = (i + 1).toString().padRight(3);
      String username = studentNames[i].username.padRight(9);
      String studentId = studentNames[i].studentId.toString().padRight(10);

      print("| $number | $username | $studentId |");
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

  void printStudentDetails() {
    for (var student in studentNames) {
      print('------------------------------------');
      print('Student ID           : ${student.studentId}');
      print('Username             : ${student.username}');
      print('Enrollment No        : ${student.enrollmentNo}');
      print('Gender               : ${student.gender}');
      print('Email                : ${student.email}');
      print('Phone No             : ${student.phoneNo}');
      print('Address              : ${student.address}');
      print('Class ID             : ${student.classId}');
      print('------------------------------------');
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
  void printStudentByIndex(int index) {
    if (index < 1 || index > studentNames.length) {
      print(
          'Invalid index. Please provide a valid index between 1 and ${studentNames.length}.');
      return;
    }
    var student = studentNames[index - 1];
    print('------------------------------------');
    print('Student ID        : ${student.studentId}');
    print('Username          : ${student.username}');
    print('Enrollment No     : ${student.enrollmentNo}');
    print('Gender            : ${student.gender}');
    print('Email             : ${student.email}');
    print('Phone No          : ${student.phoneNo}');
    print('Address           : ${student.address}');
    print('Class ID          : ${student.classId}');
    print('------------------------------------');
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

  void printTeachers() {
    print("\nTeachers:\n");
    print("| No. | Username  | Teachers ID |");
    print("|-----|-----------|------------|");

    for (int i = 0; i < teacherNames.length; i++) {
      String number = (i + 1).toString().padRight(3);
      String username = teacherNames[i].username.padRight(9);
      String teacherId = teacherNames[i].teacherId.toString().padRight(10);

      print("| $number | $username | $teacherId |");
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

  void printTeachersDetails() {
    for (var teacher in teacherNames) {
      print('------------------------------------');
      print('Teacher ID       : ${teacher.teacherId}');
      print('Username         : ${teacher.username}');
      print('Password         : ${teacher.password}');
      print('Confirm Password : ${teacher.confirmPassword}');
      print('Name             : ${teacher.name}');
      print('Age              : ${teacher.age}');
      print('Gender           : ${teacher.gender}');
      print('Email            : ${teacher.email}');
      print('Phone No         : ${teacher.phoneNo}');
      print('Address          : ${teacher.address}');
      print('Class Teacher    : ${teacher.classTeacher}');
      print('------------------------------------');
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
  ///

  void printTeacherByIndex(int index) {
    if (index < 1 || index > teacherNames.length) {
      print(
          "Invalid index. Please enter a number between 1 and ${teacherNames.length}.");
      return;
    }

    var teacher = teacherNames[index - 1];
    print('------------------------------------');
    print('Teacher ID      : ${teacher.teacherId}');
    print('Username        : ${teacher.username}');
    print('Password        : ${teacher.password}');
    print('Confirm Password: ${teacher.confirmPassword}');
    print('Name            : ${teacher.name}');
    print('Age             : ${teacher.age}');
    print('Gender          : ${teacher.gender}');
    print('Email           : ${teacher.email}');
    print('Phone No        : ${teacher.phoneNo}');
    print('Address         : ${teacher.address}');
    print('Class Teacher   : ${teacher.classTeacher}');
    print('------------------------------------');
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
  ///
  void printClasss() {
    print("\nClasses:\n");
    print("| No. | Class Name | Class ID | Teacher   |");
    print("|-----|------------|----------|-----------|");

    for (var i = 0; i < classes.length; i++) {
      String className = classes[i].className.padRight(10);
      String classId = classes[i].classId.toString().padRight(8);
      String teacherName = classes[i].teacherName.padRight(10);

      print("| ${i + 1}   | $className | $classId |$teacherName |");
    }
  }
}

void main() {
  School school = School();

}
