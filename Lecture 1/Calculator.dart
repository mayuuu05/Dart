// Write a Dart program to create a calculator using
// switch case.

import 'dart:io';

void main()
{
    print("\n=================Calculator=================\n");

    int choice;
    print("Prase 1 For Addition");
    print("Prase 2 For Subtraction");
    print("Prase 3 For Multipication");
    print("Prase 4 For Divison");
    print("Prase 5 For modual");
    print("Prase 0 For Exit");

    stdout.write("Enter your choice : ");
    choice = int.parse(stdin.readLineSync()!);

    int x,y;
    stdout.write("Enter the value of x : ");
    x = int.parse(stdin.readLineSync()!);

    stdout.write("Enter the value of y : ");
    y = int.parse(stdin.readLineSync()!);



    switch(choice)
    {
        case 0 : print("Exit!");
        break;
        case 1 : print("Addition is = ${x + y} ");
        break;
        case 2 : print("Subtraction is = ${x - y}");
        break;
        case 3 : print("Multipication is = ${x * y}");
        break;
        case 4 : 
        if(y!=0)
        {
            print("Divison is = ${x / y} ");
        }
        else
        {
            print("can't divide by Zero!!");
        }

        break;
        case 5 : print("Modual is = ${x % y} ");
        break;
        default : print("Enter valid input bretween 0 to 5 !");
        break;

    }
}

