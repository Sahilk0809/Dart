import 'dart:io';

void main()
{
  List states = [];
  
  print("Enter the states name in India : ");
  for(int i=0; i<28; i++)
  {
      stdout.write("${i+1}. ");
      states.add(stdin.readLineSync()!);
  }
  print("Printing states name : ");
  print(states);
}