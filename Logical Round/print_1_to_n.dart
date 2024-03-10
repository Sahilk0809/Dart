import 'dart:io';

void main() 
{
    var n;
  stdout.write("Enter the Value : ");
  n = int.parse(stdin.readLineSync()!);
  
  for(int i=1; i<=n; i++)
  {
      print("$i ");
  }
}