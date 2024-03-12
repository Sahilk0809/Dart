// 26.Wap to count frequency of each character in a string.

import 'dart:io';

void main()
{
  List l1 = [];

  stdout.write(">> Enter the array size : ");
  int n = int.parse(stdin.readLineSync()!);

  int length = n;
  bool isRepeat = false;

  for (int i = 0; i < n; i++) {
    stdout.write("Enter the Chare : ");
    String x = stdin.readLineSync()!;

    l1.add(x);
  }

  print("\nCurrent String $l1\n");

  for (int i = 0; i < length; i++)
  {
    int fre = 0;
    fre++;
    isRepeat = false;
    for (int j = 0; j < length; j++) 
    {
      if (i == j)
      continue;
      else if (l1[i] == l1[j]) 
      {
        if (j < i) isRepeat = true;
        fre++;
      }
    }

    if (isRepeat)
      continue;
    else
      print("FrequencyOf(${l1[i]}) = $fre");
  }
}