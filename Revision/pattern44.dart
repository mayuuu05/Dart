// 1 
// 3 5
// 5 7 9
// 7 9 11 13
// 9 11 13 15 17

import 'dart:io';

void main() {


  int k=0,l=4;

  for (int i = 1; i <= 4; i++) 
  {
    k+=i;
    for (int j = k; j >k-i; j--) 
    { 
      stdout.write("$j ");
    
      
    }
    print(""); 
  }
}
