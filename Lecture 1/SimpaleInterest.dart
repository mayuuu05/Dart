// Write a Dart program to find a Simple
// Interest.

import 'dart:io';

// Simpale_interest = (principle * rate * time)/100;```` (formula)
void main()
{
    double principle,rate,time,Simpale_interest;
    print("\n=================Simpale Interest=================\n");
    stdout.write("Enter principle amount : ");
    principle = double.parse(stdin.readLineSync()!);

    stdout.write("Enter rate : ");
    rate = double.parse(stdin.readLineSync()!);

    stdout.write("Enter time : ");
    time = double.parse(stdin.readLineSync()!);

    Simpale_interest = (principle * rate * time)/100;
    print("The simple interest is : $Simpale_interest");
}