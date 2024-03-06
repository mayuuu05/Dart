// Write a Dart program to perform multiplication of
// two user given numbers.

import 'dart:io';

void main()
{
    int x,y,ans;

    stdout.write('Enter the value of x : ');
    x = int.parse(stdin.readLineSync()!);

    stdout.write('Enter the value of y : ');
    y = int.parse(stdin.readLineSync()!);

    ans = x * y;

    print('Ans is : $ans');
    


}