import 'dart:io';

void main()
{
  List l1 = [];
  int i;
  int large=0;

  for(i=0 ; i<10 ; i++)
  {
    stdout.write("Enter the value of a[$i] : ");
    int n = int.parse(stdin.readLineSync()!);
    l1.add(n);
  }

  for(i=0 ; i<10 ; i++)
  {
    if(l1[i] > large)
    {
      large = l1[i] ;
    }
  }
  print("\nLarge element is :$large\n");
}