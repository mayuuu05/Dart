//2. Write a Dart Program to create a function as expression which returns unique list of names by passing a list of names to that function.

import 'dart:io';

List<String> uniqueNameList(List<String> names) => names.toSet().toList();

void main() {
  List<String> names = ["Mayu", "durga", "krupa", "Mayu", "durga", "prachi"];
  print("${(uniqueNameList(names))}");
}
