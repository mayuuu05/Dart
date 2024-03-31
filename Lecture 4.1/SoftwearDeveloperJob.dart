//4. Write a Dart Program to create a function which accepts marks of 3 to 5 occupations and returns a percentage of success
//to gain a new job as a software developer (using optional parameters).

import 'dart:io';

double CalculatePercentage(
    {required double physics,
    required double chemistry,
    required double mathematics,
    required double DSA,
    required double computerNetworks}) {
  double percentage =
      ((physics + chemistry + mathematics + DSA + computerNetworks) * 100) /
          500;
  return percentage;
}

void main() {
  double physics, chemistry, mathematics, DSA, computerNetworks;

  stdout.write("Enter physics marks : ");
  physics = double.parse(stdin.readLineSync()!);

  stdout.write("Enter chemistry marks: ");
  chemistry = double.parse(stdin.readLineSync()!);

  stdout.write("Enter mathematics marks: ");
  mathematics = double.parse(stdin.readLineSync()!);

  stdout.write("Enter DSA marks: ");
  DSA = double.parse(stdin.readLineSync()!);

  stdout.write("Enter computerNetworks marks: ");
  computerNetworks = double.parse(stdin.readLineSync()!);

  double percantage = CalculatePercentage(
      physics: physics,
      chemistry: chemistry,
      mathematics: mathematics,
      DSA: DSA,
      computerNetworks: computerNetworks);

  print("Percentage to gain a job as a software developer is => ");
  print("$percantage");
}
