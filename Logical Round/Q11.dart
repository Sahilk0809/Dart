// 11.Wap print fibonacci series.

import 'dart:io';

void main()
{
  stdout.write("Enter the number :");
  String a = stdin.readLineSync()!;
  int n = int.parse(a);

  int i ,first=0,sec=1;
  for(i=0; i<n; i++)
  {
    stdout.write("$first ");
    int th = first + sec;
    first=sec;
    sec=th;
  }


}