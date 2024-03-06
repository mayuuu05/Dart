// Write a Dart program to find a user given
// number is even or odd.

import 'dart:io';

void main()
{
    int num;

    stdout.write("Enter any number : ");
    num = int.parse(stdin.readLineSync()!);

    if(num%2==0)
    {
        print("This number is Even!");
    }
    else
    {
        print("This number is Odd");
    }
}
