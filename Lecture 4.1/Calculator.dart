//3. Write a Dart Program to make a simple calculator functionality by creating various different functions with switch case.

import 'dart:io';

double add(double num1, double num2) {
  return num1 + num2;
}

double subtract(double num1, double num2) {
  return num1 - num2;
}

double multiply(double num1, double num2) {
  return num1 * num2;
}

double divide(double num1, double num2) {
  return num1 / num2;
}

double reminder(double num1, double num2) {
  return num1 % num2;
}

void main() {
  print("Press 1 for Addition");
  print("Press 2 for Subtraction");
  print("Press 3 for Multiply");
  print("Press 4 for Divide");
  print("Press 5 for Reminder");
  print("Press 0 for Exit");
  stdout.write("Choose operation : ");
  int choice = int.parse(stdin.readLineSync()!);

  stdout.write("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      print("Additon is =  ${add(num1, num2)}");
      break;
    case 2:
      print("Substraction is = ${subtract(num1, num2)}");
      break;
    case 3:
      print("Multiply is = ${multiply(num1, num2)}");
      break;
    case 4:
      print("Divison is = ${divide(num1, num2)}");
      break;
    case 5:
      print("Reminder is = ${reminder(num1, num2)}");
      break;
    case 0:
      print("Exit !!!");
      break;
    default:
      print("Enter valid input between 0 to 5 !!!");
      break;
  }
}
