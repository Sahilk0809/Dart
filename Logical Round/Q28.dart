// 28.Wap to remove spaces, blanks from a string.

import 'dart:io';

void main()
{
  stdout.write("Enter the string : ");
  String? name = stdin.readLineSync()!;

  print("\nString removing space : ${name.replaceAll(' ', '')}\n");

}