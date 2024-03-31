//5. Write a Dart Program to illustrate the use of positional
// parameters by creating a function which returns the sum of passed parameters.

import 'dart:io';

int SumOfPassedParameter([int? element1, int? element2]) =>
    element1! + element2!;

void main() {
  stdout.write("Enter element1 : ");
  int element1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter element2 : ");
  int element2 = int.parse(stdin.readLineSync()!);

  print("\nSum is : ${SumOfPassedParameter(element1, element2)}\n");
}
