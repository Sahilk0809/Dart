import 'dart:io';

void main() {
  List l1 = [[]];

  int num, n;

  stdout.write("Enter the number : ");
  n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) 
  {
    l1.add([]);
  }

  for (int i = 0; i < n; i++) 
  {
    for (int j = 0; j < n; j++) 
    {
      stdout.write("Enter value of l1[$i][$j] : ");
      num = int.parse(stdin.readLineSync()!);
      l1[i].add(num);
    }
  }

  print("Transpose Matrix:");
  
  for (int i = 0; i < n; i++) 
  {
    for (int j = 0; j < n; j++) 
    {
      stdout.write("${l1[j][i]} ");
    }
    print("");
  }
}