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

  int max = number[1];

  for (int i = 1; i < number.length; i++) 
  {
    if (number[i] > max) 
    {
      max = number[i];
    }
  }
  print("The largest number is: $max");


}