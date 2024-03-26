
import 'dart:io';

class Train
{
  int? trainNumber;
  String? trainName;
  String? source;
  String? destination;
  int? trainTime;

  void set()
  {
    stdout.write("Enter the Train Number : ");
    trainNumber = int.parse(stdin.readLineSync()!);

    stdout.write("Enter the Train Name : ");
    trainName = stdin.readLineSync()!;

    stdout.write("Enter the Source : ");
    source = stdin.readLineSync()!;

    stdout.write("Enter the Destination : ");
    destination = stdin.readLineSync()!;

    stdout.write("Enter the Train time : ");
    trainTime = int.parse(stdin.readLineSync()!);
   
  }

  void get()
  {
    stdout.write(" Train Number : ${trainNumber}");
    stdout.write(" Train Name   : ${trainName}");
    stdout.write(" Source       : ${source}");
    stdout.write(" Destination  : ${destination}");
    stdout.write(" Train Time   : ${trainTime}");
    
  }
}

void main()
{
  List trainList = [];

  for(int i=0; i<3; i++)
  {
    Train train = Train();
    train.set();
    train.get();
    trainList.add(train);

    if(i==2)
    {
      stdout.write('Enter Train Number ');
      int TrainNumber = int.parse(stdin.readLineSync()!);

      if(TrainNumber == trainList[0].trainNumber)
      {
        trainList[0].get();
      }
      else if(TrainNumber == trainList[1].trainNumber)
      {
        trainList[1].get();
      }
      else if(TrainNumber == trainList[2].trainNumber)
      {
        trainList[2].get();
      }
      else
      {
        print("Enter valid input");
      }
    }
  }
}
