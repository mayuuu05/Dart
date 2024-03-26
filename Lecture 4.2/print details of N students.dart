import 'dart:io';

class Student
{
  int? id,std,age;
  String? name;

  void set(int i)
  {
    stdout.write('Enter Name : ');
    String name = stdin.readLineSync()!;

    stdout.write('Enter std : ');
    int std = int.parse(stdin.readLineSync()!);

    stdout.write('Enter ID : ');
    int id = int.parse(stdin.readLineSync()!);

    stdout.write('Enter age : ');
    int age = int.parse(stdin.readLineSync()!);

  }
  void get(int i)
  {
    stdout.write('\nName   : $name');
    stdout.write('\nID     : $id');
    stdout.write('\nStd     : $std');
    stdout.write('\nAge     : $age');
    stdout.write('\n------------------------');
  }
}
void main()
{

  stdout.write('\nEnter the number : ');
  int n = int.parse(stdin.readLineSync()!);

  List studentList = [];

  for(int i=0; i<n; i++)
  {
    print("\nStudents [${i+1}]");   

    Student student = Student();
    student.set(i);
    studentList.add(student);

  }
  for(int i=0; i<n ; i++)
  {
    studentList[i].get(i);
  }

  
}


