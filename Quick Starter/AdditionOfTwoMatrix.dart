import 'dart:io';

void main()
{
  int i,j;
  List l1 = [
              [1,2,3],
              [4,5,6],
              [7,8,9]
            ];
  stdout.write("\n$l1\n");

  List l2 = [
              [1,2,3],
              [4,5,6],
              [7,8,9]
            ];
  stdout.write("\n$l2\n");
 
  List l3 = [
              [0,0,0],
              [0,0,0],
              [0,0,0]
            ];

  for(int i=0 ; i<3 ; i++)
  {
    for(int j=0 ; j<3 ; j++)
    {
      l3[i][j] = (l1[i][j] + l2[i][j]);
      stdout.write("\n ${l3[i][j]} ");
    }
    print("  ");
    
    
    
  }

  


}