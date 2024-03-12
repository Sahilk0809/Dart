import 'dart:io';

void main() {
  stdout.write("Enter the size of array : ");
  int n = int.parse(stdin.readLineSync()!);

  List l1 = [];

  for (int i = 0; i < n; i++) 
  {
    stdout.write("Enter the element : ");
    int num = int.parse(stdin.readLineSync()!);
    l1.add(num);

  }

  for (int i = 0; i < n; i++) 
  {
    if (l1[i] != 1 &&
            l1[i] % 2 != 0 &&
            l1[i] % 3 != 0 &&
            l1[i] % 5 != 0 &&
            l1[i] % 7 != 0 &&
            l1[i] % 11 != 0 &&
            l1[i] % 13 != 0 ||
        l1[i] == 2 ||
        l1[i] == 3 ||
        l1[i] == 5 ||
        l1[i] == 7 ||
        l1[i] == 11 ||
        l1[i] == 13) 
    {
      stdout.write("${l1[i]} ");
    }
  }
}