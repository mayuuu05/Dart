// Write a Dart program to print full name by
// getting first name and last name by user input.

import 'dart:io';

void main()
{
    String First_num;
    String Second_num;

    stdout.write("Enter first name : ");
    First_num = stdin.readLineSync()!;

    stdout.write("Enter second name : ");
    Second_num = stdin.readLineSync()!;

    print("Name : $First_num $Second_num");


}