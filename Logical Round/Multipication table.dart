// 6. Wap to print multiplication table of any number.

import 'dart:io';

void main()
{
    int n;
    stdout.write("Enter the value of n : ");
    n = int.parse(stdin.readLineSync()! );
    int i;
    for(int i=1 ; i<=10 ; i++)
    {
      print("$n x $i = ${n*i}");
    }
    
}