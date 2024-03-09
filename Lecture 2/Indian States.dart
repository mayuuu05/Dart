// Write a Dart program to create a list which
// contains all Indian states.
// Add all indian states in list by user input.
// After that print all states using any type of loop.

import 'dart:io';

void main() {
  List l1 = [];

  print("\nEnter the states : ");

  for (int i=0 ; i<28 ; i++) 
  {
    stdout.write("${i+1}] ");
    l1.add(stdin.readLineSync()!);
  }
  print("\n States : ");
  print(l1"\n);
}