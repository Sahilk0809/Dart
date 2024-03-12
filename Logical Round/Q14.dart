import 'dart:io';

void main()
{
  stdout.write("Enter the value :");
  int n = int.parse(stdin.readLineSync()!);

  List<int> element=[];

  int i,j;

  for(i=0; i<n; i++)
  {
    stdout.write("Enter the Array element :${"[$i]"}");
    element.add(int.parse(stdin.readLineSync()!));
  }

  element.sort(); 
  //accending to convot

  print(element[i-2]);
}