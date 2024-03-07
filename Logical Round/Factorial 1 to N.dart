// Wap to calculate factorial of a number.

import 'dart:io';

void main()
{
    int n,factorial=1;
    stdout.write("Enter the value of n : ");
    n = int.parse(stdin.readLineSync()! );
    int i;
    for(int i=1 ; i<=n ; i++)
    {
      factorial = factorial * i;
    }
    print("Factorial is = $factorial");
}