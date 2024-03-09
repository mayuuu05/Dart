// Write a Dart program to concate list element
// value with hello.
// For exmple,
// input: [1, 2, 3]
// output: [1 hello, 2 hello, 3 hello]



import 'dart:io';

void main()
{
  List l1 = [1,2,3];
  String a = "hello";
  List l2 = [];

  for(int i=0 ; i<l1.length ; i++)
  {
    l2.add("${l1[i]} $a ");
  }
  print("\nOutput : ");
  print(l2);
  print("\n");
}

















