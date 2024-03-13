import 'dart:io';

void main()
{
  List negativeList = [];
  int i;

  for(i=0 ; i<10 ; i++)
  {
    stdout.write("Enter the value of a[$i] : ");
    int n = int.parse(stdin.readLineSync()!);
    negativeList.add(n);
  }

  for(i=0 ; i<10 ; i++)
  {
    if(negativeList[i] < 0)
    {
      print("Negative elemets are : ${negativeList[i]} ");
    }
  }
  
}