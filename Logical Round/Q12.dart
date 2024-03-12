// 12.Wap to print all negative elements in an array.

import 'dart:io';

void main() 
{
  stdout.write("Enter the number of elements : ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> number = [];

  for (int i = 0; i < n; i++) 
  {
    int a = int.parse(stdin.readLineSync()!);
    number.add(a);
  }

  for (int i = 0; i < n; i++) 
  {
    if(number[i] < 0)
    {
      stdout.write("Negative elements are : ${number[i]} ");
    }
  }


}