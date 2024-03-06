import 'dart:io';

void main()
{
  stdout.write("Enter n : ");
  int n = int.parse(stdin.readLineSync()!);

  print("Multiplication table of $n");
  for(int i=1; i<=10; i++)
  {
    print("$n * $i = ${n * i}");
  }
}