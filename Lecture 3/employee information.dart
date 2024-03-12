import 'dart:io';


class Employee
{
  String? emp_name;
  int? emp_id,emp_age,emp_salary;

   Map m1 = {
    'id': 10,
    'name':"mayu",
    'age': 20,
    'salary':10000

   };

   void setEmployeeDetails()
   {
    
    stdout.write("Enter Employee id : ");
    emp_id = int.parse(stdin.readLineSync()!);

    stdout.write("Enter Employee Name : ");
    emp_name = stdin.readLineSync()!;

    stdout.write("Enter Employee  Age : ");
    emp_age = int.parse(stdin.readLineSync()!);

    stdout.write("Enter Employee  Salary : ");
    emp_salary = int.parse(stdin.readLineSync()!);

   }

   void assignDetails()
   {
      m1['id'] = emp_id;
      m1['name'] = emp_name;
      m1['age'] = emp_age;
      m1['salary'] = emp_salary;

   }

   void displayEmployeeDetails()
   {
      print("\nId     : ${m1['id']}");
      print("Name   : ${m1['name']}");
      print("Age    : ${m1['age']}");
      print("Salary : ${m1['salary']}");


   }
}
void main()
{
  Employee e1= Employee();
 
    for(int i=0 ; i<3 ; i++)
    {
    print("\n Employee [${i+1}]\n");
    e1.setEmployeeDetails();
    e1.assignDetails();
    e1.displayEmployeeDetails();
    }

}
  