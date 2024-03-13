import 'dart:io';

void main()
{
  List l1 = [1,23,11,26,12,33,20,5,3];
  print(l1.toList());

  print("\nPress 1 for Insert ");
  print("Press 2 for Delete ");
  print("Press 3 for Update ");
  print("Press 0 for Exit ");

  stdout.write("Enter your choice : ");
  int choice = int.parse(stdin.readLineSync()!);

  switch(choice)
  {
    case 1 : 
            stdout.write("Enter the value : ");
            l1.add(stdin.readLineSync()!);
            print(l1);
            break;

    case 2 : 
            stdout.write("Enter the Delete value : ");
            int j = int.parse(stdin.readLineSync()!);
            l1.remove(j);

            print(l1);

            break;
    case 3 : 
            stdout.write("Enter the index for Update value : ");
            int i = int.parse(stdin.readLineSync()!);

            stdout.write("Enter the Update value : ");
            int j = int.parse(stdin.readLineSync()!);

            l1[i] = j;

            print(l1);
            break;

    default : print("Enter valid Input !!!! Between 0 to 3");
    break;

  }





}