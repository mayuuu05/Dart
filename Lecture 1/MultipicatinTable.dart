// Write a Dart program to print multiplication table
// of user given number.

import 'dart:io';

void main()
{
    print("\n=================Multipication Table=================\n");
    int n,i,j;

    stdout.write('Enter any number : ');
    n = int.parse(stdin.readLineSync()!);

    for(i=1 ; i<=10 ; i++)
    {
       
        print("${n} * ${i} = ${n * i}");
    
    }
}