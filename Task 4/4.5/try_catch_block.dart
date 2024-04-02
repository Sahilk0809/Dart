// 4.WAP Using try catch block.

import 'dart:io';

void main()
{
  late int x,y;

  try
  {
    stdout.write("Enter x : ");
    x = int.parse(stdin.readLineSync()!);
    stdout.write("Enter y : ");
    y = int.parse(stdin.readLineSync()!);
  }
  catch(e)
  {
    print("x is of integer datatype...! : $e ");
  }

  print("\nSum is : ${x+y}\n");
}