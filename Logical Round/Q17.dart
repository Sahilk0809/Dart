// 17.Wap to change 9 to 0 in array.

import 'dart:io';

void main()
{
  stdout.write("Enter the array size : ");
  int n = int.parse(stdin.readLineSync()!);

  List l1 = [];

  for (int i = 0; i < n; i++)
  {
    stdout.write("Enter the element : ");
    int x = int.parse(stdin.readLineSync()!);

    l1.add(x);
  }

  for (int i = 0; i < n; i++)
  {
    if (l1[i] == 9) 
    {
      l1[i] = 0;
    } 
    else 
    {
      l1[i] = l1[i];
    }
    stdout.write(l1);
  }
  