// Wap to calculate 1 to N no sum.

import 'dart:io';

void main()
{
    int n,sum=0;
    stdout.write("Enter the value of n : ");
    n = int.parse(stdin.readLineSync()! );
    int i;
    for(int i=1 ; i<=n ; i++)
    {
      sum = sum + i;
    }
    print("Sum is = $sum");
}