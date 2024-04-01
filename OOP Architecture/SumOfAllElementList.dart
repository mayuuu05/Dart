//1. WAP to take a list using named parameter and return sum of all elements of list.

import 'dart:io';

int sumOfListElement(List<int> elements) {
  int sum = 0;
  for (int i = 0; i < elements.length; i++) {
    sum += elements[i];
  }
  return sum;
}

void main() {
  List<int> sumList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print("\nSum of list is : ${sumOfListElement(sumList)}\n");
}
