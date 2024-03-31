// 1. Write a Dart Class which convert given distance in appropriate feet and inches.
// e.g. Input: 5 feet and 15 inch
// Output: 6 feet and 3 inch


import 'dart:io';

class Distance
{
  late int feet,inch;

  void getInput()
  {
    stdout.write("Enter feet : ");
    feet = int.parse(stdin.readLineSync()!);

    stdout.write("Enter inch : ");
    inch = int.parse(stdin.readLineSync()!);

  }
  
  void convertInDistance()
  {
    int x = inch ~/12;
    feet = feet + x;
    inch = inch - (x*12);
  }

  void getOutput()
  {
    stdout.write("${feet} feet and  ${inch} inch\n" );
  }

}
void main()
{
  Distance distance = Distance();
  distance.getInput();
  distance.convertInDistance();
  distance.getOutput();
  
}