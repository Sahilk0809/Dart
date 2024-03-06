import 'dart:io';

void main()
{
  stdout.write("Enter n : ");
  int n = int.parse(stdin.readLineSync()!);

  for(int i=1; i<=10; i++)
  {
    print(n * i);
  }
}