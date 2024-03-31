//1. Write a Dart Program to create a function which returns a cube of given number.
import 'dart:io';

int Cube(int elem) {
  return elem * elem * elem;
}

void main() {
  stdout.write("Enter any element : ");
  int elem = int.parse(stdin.readLineSync()!);

  print("Cube is : ${(Cube(elem))}");
}
