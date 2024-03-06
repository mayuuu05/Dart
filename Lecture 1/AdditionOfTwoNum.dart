// Write a Dart program to perform addition of two
// different numbers.

import 'dart:io';

void main() {
  int x, y, sum;

  stdout.write("Enter the value of x : ");
  x = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the value of y : ");
  y = int.parse(stdin.readLineSync()!);

  sum = x + y;
  print('Sum is : $sum');
  
}