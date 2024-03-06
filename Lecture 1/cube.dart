import 'dart:io';

void main()
{
   stdout.write("Enter a : ");
   int a = int.parse(stdin.readLineSync()!);

   int cube;
   //cube of the number
   cube = a * a * a;
   
   print("Cube of $a is : $cube");
}