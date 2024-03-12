// 27.Wap to check whether a string is palindrome or not.

import 'dart:io';

void main()
{
  int n, a, b, rev = 0;

  stdout.write("Enter the number (n)  : ");
  n = int.parse(stdin.readLineSync()!);

  b = n;

  while (n > 0)
  {
    a = n % 10;
    rev = (rev * 10) + a;
    n ~/= 10;
  }
  
  if (b == rev)
  {
    print("$b is a palindrome number.",);
    print("==========================");
  }
  else
  {
    print("$b is not a palindrome number.");
    print("=============================");
  }
}