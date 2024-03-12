
// 10.Wap print all prime no into 1 to N.

import 'dart:io';

void main()
 {
  print("Enter the value of N:");
  int n = int.parse(stdin.readLineSync()!);

  int i;

  for(i=2; i<n; i++)
  {
      int j;
      for(j=2; j<i; j++)
      {
        if(i%j==0)
        {
        break;
        }
      }
      if(j==i)
      {
        print(i);
      }
  }

}