// Write a Dart program to find a cube of any
// number.

import 'dart:io';

void main()
{
    print("\n=================Cube=================\n");
    int a;

    stdout.write("Enter the any number for cube : ");
    a = int.parse(stdin.readLineSync()!);

    print("Cube is : ${a*a*a}");


}