// 2 
// 4 6
// 8 10 12
// 14 16 18 20
// 22 24 26 28 30


import 'dart:io';

void main() {
  int k=1,l,m;


  for (int i = 5; i >= 1; i--) 
  { 
    l=i;
    m=k;

    for (int j = 5; j >= i; j--) 
    { 
      stdout.write("$m ");
      m =m-l;
      l++;
    }
    k = k+i;
    print(""); 
  }
}
