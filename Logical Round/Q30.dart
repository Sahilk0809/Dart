// 30.C program to find factorial of number using recursion.

import 'dart:io';

void main()
{
  int a = 1;
  int i, fac = 1;

  stdout.write("Enter the num : ");
  int n = int.parse(stdin.readLineSync()!);

  for (i = a; i <= n; i++)
  {
    fac = fac * i;
  }

  print("Factorial is $fac");
}