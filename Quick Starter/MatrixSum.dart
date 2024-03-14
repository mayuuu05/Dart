
import 'dart:io';

void main()
{
  var l1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  print(l1);


  //Sum of all elements
  //Sum of specific row
  //Sum of specific column
  //Sum of diagonal elements
  //Sum of antidiagonal elements
  //Press 0 for Exit !"

  int sumOfMatrix = 0;
  print("\nWhat do you want to do in the matrix??");
  print("\nPress 1 for Sum of all elements");
  print("Press 2 for Sum of specific row");
  print("Press 3 for Sum of specific column");
  print("Press 4 for Sum of diagonal elements");
  print("Press 5 for Sum of antidiagonal elements");
  print("Press 0 for Exit !");

  stdout.write("\nEnter your choice : ");
  int choice = int.parse(stdin.readLineSync()!);
 
  switch(choice)
  {
    case 0 : print("Exit !!!");
    break;

    case 1 :
      for(int i=0; i<3; i++)
      {
        for(int j=0; j<3; j++)
        {
            sumOfMatrix = sumOfMatrix + l1[i][j];
        }
      }
      print("\nSum of all elements : $sumOfMatrix");
      break;

    case 2 : 
      for(int i=0; i<3; i++)
      {
        sumOfMatrix = 0;
        for(int j=0; j<3; j++)
        {
            sumOfMatrix = sumOfMatrix + l1[i][j];
        }
        print("\nSum of specific row elements[${i + 1}] : $sumOfMatrix\n");
      }
      break;

    case 3 :
      for(int i=0; i<3; i++)
      {
        sumOfMatrix = 0;
        for(int j=0; j<3; j++)
        {
            sumOfMatrix = sumOfMatrix + l1[j][i];
        }
        print("\nSum of specific column elements[${i+1}] : $sumOfMatrix");
      }
      break;

    case 4 :
      for(int i=0; i<3; i++)
      {
        for(int j=0; j<3; j++)
        {
          if(i==j)
          {
            sumOfMatrix = sumOfMatrix + l1[i][j];
          }
        }
      }
      print("\nSum of diagonal elements : $sumOfMatrix");
      break;

    case 5 :
        for(int i=0; i<3; i++)
        {
          for(int j=0; j<3; j++)
          {
            if(i+j==2)
            {
              sumOfMatrix += l1[i][j];
            }
          }
        }
        print("\nSum of antidiagonal elements : $sumOfMatrix");
        break;

    default :
     print("\nEnter valid input between 0 to 5 !!");
      break;
  }
  print("\n");
}
