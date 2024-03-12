// 23.Wap to addition of two matrices.

import 'dart:io';

void main() {
  List l1 = [[]];
  List l2 = [[]];
  int num, n;

  stdout.write("Enter the number : ");
  n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) 
  {
    l1.add([]);
  }

  for (int i = 0; i < n; i++)
  {
    for (int j = 0; j < n; j++)
     {
      stdout.write("Enter value of l1[$i][$j] : ");
      num = int.parse(stdin.readLineSync()!);
      l1[i].add(num);
    }
  }

  print("\n2nd matrix\n");

  for (int i = 0; i < n; i++)
  {
    l2.add([]);
  }

  for (int i = 0; i < n; i++)
  {
    for (int j = 0; j < n; j++) 
    {
      stdout.write("Enter value of l2[$i][$j] : ");
      num = int.parse(stdin.readLineSync()!);
      l2[i].add(num);
    }
  }

  print("Matrix 1 :");
  for (int i = 0; i < n; i++) 
  {
    for (int j = 0; j < n; j++) 
    {
      stdout.write("${l1[i][j]} ");
    }
    print("");
  }

  print("Matrix 2 :");
  for (int i = 0; i < n; i++)
  {
    for (int j = 0; j < n; j++) 
    {
      stdout.write("${l2[i][j]} ");
    }
    print("");
  }

  print("Addision matrix");

  for (int i = 0; i < n; i++) 
  {
    for (int j = 0; j < n; j++) 
    {
      stdout.write("${l1[i][j] + l2[i][j]} ");
    }
    print("");
  }
}