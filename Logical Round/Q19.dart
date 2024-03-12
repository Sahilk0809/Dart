// 19.Wap to to find and delete repeat elements in array.

import 'dart:io';

void main()
{
  int n,i,num,j;
  List arr = [];

  stdout.write("Enter ths Size of an array : ");
  n = int.parse(stdin.readLineSync()!);

  stdout.write("\nEnter the Elements of an Array\n");
  for(i=0; i<n; i++)
  {
    stdout.write("Enter a arr[$i] : ");
    num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }

  for(i=0; i<n; i++)
  {
    for(j=i+1; j<n; j++)
    {
      if(arr[i] == arr[j])
      {
        arr.removeAt(j);
        n--;
      }
    }
  }
  stdout.write("\n repeat elements are delete : $arr\n\n");
}