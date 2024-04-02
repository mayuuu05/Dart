class StudentModel
{
    var name,course;
   var rollNo;

  StudentModel({required this.name,required this.rollNo,required this.course});

  factory StudentModel.fromStudentsDetails({required Map StudentsDetails})
  {
    return StudentModel(name: StudentsDetails['name'],
                        rollNo: StudentsDetails['rollNo'],
                        course: StudentsDetails['course'] );
  }
}