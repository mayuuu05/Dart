// 1.Display 30 Students Data with Roll no and name and Course with Factory Constructor.

import 'dart:io';
import 'StudentFactoryConstructor.dart';

class StudentsDetails
{
  var name,course;
   var rollNo;

  StudentsDetails({required this.name,required this.rollNo,required this.course});
}

List DetailsOfStudents = [
  {'name' : 'Mayu','rollNo' : 1, 'course': 'Flutter Developer'},
  {'name' : 'Durga','rollNo' : 2, 'course': 'Flutter Developer'},
  {'name' : 'Krupa','rollNo' : 3, 'course': 'Flutter Developer'},
  {'name' : 'Prachi','rollNo' : 4, 'course': 'Flutter Developer'},
  {'name' : 'Sadhana','rollNo' : 5, 'course': 'Flutter Developer'},
  {'name' : 'Aishwarya','rollNo' : 6, 'course': 'Flutter Developer'},
  {'name' : 'Shalu','rollNo' : 7, 'course': 'Flutter Developer'},
  {'name' : 'Anjali','rollNo' : 8, 'course': 'Flutter Developer'},
  {'name' : 'Drashti','rollNo' : 9, 'course': 'Flutter Developer'},
  {'name' : 'Akta','rollNo' : 10, 'course': 'Flutter Developer'},
  {'name' : 'Yogita','rollNo' : 11, 'course': 'Full Stack'},
  {'name' : 'Diya','rollNo' : 12, 'course': 'Full Stack'},
  {'name' : 'Aayushi','rollNo' : 13, 'course': 'Full Stack'},
  {'name' : 'Snehal','rollNo' : 14, 'course': 'Full Stack'},
  {'name' : 'Meshwa','rollNo' : 15, 'course': 'Full Stack'},
  {'name' : 'Pooja','rollNo' : 16, 'course': 'Full Stack'},
  {'name' : 'Tanisha','rollNo' : 17, 'course': 'Full Stack'},
  {'name' : 'Netra','rollNo' : 18, 'course': 'Full Stack'},
  {'name' : 'Asmita','rollNo' : 19, 'course': 'Full Stack'},
  {'name' : 'Kumud','rollNo' : 20, 'course': 'Full Stack'},
  {'name' : 'Riya','rollNo' : 21, 'course': 'UI & UX'},
  {'name' : 'Vidhya','rollNo' : 22, 'course': 'UI & UX'},
  {'name' : 'Aaru','rollNo' : 23, 'course': 'UI & UX'},
  {'name' : 'Krishna','rollNo' : 24, 'course': 'UI & UX'},
  {'name' : 'Jiya','rollNo' : 25, 'course': 'UI & UX'},
  {'name' : 'Myushi','rollNo' : 26, 'course': 'UI & UX'},
  {'name' : 'Panthi','rollNo' : 27, 'course': 'UI & UX'},
  {'name' : 'Prapti','rollNo' : 28, 'course': 'UI & UX'},
  {'name' : 'Jahnvi','rollNo' : 29, 'course': 'UI & UX'},
  {'name' : 'Kritika','rollNo' : 30, 'course': 'UI & UX'},
  
];
List<StudentModel> StudentList = [];
void main()
{
  for(int i=0 ; i<DetailsOfStudents.length ; i++)
  {
    StudentModel student = StudentModel.fromStudentsDetails(StudentsDetails:DetailsOfStudents[i] );
    StudentList.add(student);
  }
  for(int i=0 ; i<StudentList.length ; i++)
  {
    print('Name : ${StudentList[i].name} '+' , Roll NO : ${StudentList[i].rollNo} '+' Course : ${StudentList[i].course}');

  }
 
}
