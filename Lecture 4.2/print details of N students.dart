import 'dart:io';

class Student
{
  int?_id,_std,_age;
  String? _name;

  void set()
  {
    stdout.write('Enter Name : ');
    String _name = stdin.readLineSync()!;

    stdout.write('Enter std : ');
    int _std = int.parse(stdin.readLineSync()!);

    stdout.write('Enter ID : ');
    int _id = int.parse(stdin.readLineSync()!);

    stdout.write('Enter age : ');
    int _age = int.parse(stdin.readLineSync()!);

  }
  void get()
  {
    stdout.write('\nName   : $_name');
    stdout.write('\nID     : $_id');
    stdout.write('\Std     : $_std');
    stdout.write('\Age     : $_age');
    stdout.write('------------------------');
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
    student.set();
    studentList.add(student);

    studentList[i].get();
  }

  
}


