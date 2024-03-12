//2. Write a Dart Program to print all unique elements from a List. Elements may be  redundant
// while entring into a List. Usr can only enter elements of String datatype.

 import 'dart:io';
//[Dynamic]
void main()
{
  String name ;
  List <String> nameList = [];

  stdout.write('\nEnter value of n : ');
  int n = int.parse(stdin.readLineSync()!);

  for(int i=0 ; i<n; i++)
  {
    stdout.write("Enter the name : ");
    name = stdin.readLineSync()!;
    nameList.add(name);
  }

  print("Unique elements are given below : ");
  print("\n${nameList.toSet().toList()}");
}

//[Static]
// void main() 
// {

//   List <String> l1 = ['Mayuuu','Durga','Kumud','Mayuuu'];
  
//   print("\nUnique elements : ");
//   Set s1 = l1.toSet();

//   print(s1);
//   print("\n");
// }

