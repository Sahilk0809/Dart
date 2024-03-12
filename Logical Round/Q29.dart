// 29.Wap to remove all repeated characters in a string.

import 'dart:io';

void main()
{
  stdout.write("Enter String : ");
  String? name = stdin.readLineSync()!;

  var length = name.length;

  var list = [];

  for (int i = 0; i < length; i++)
  {
    list.add(name[i]);
  }

  for (int i = 0; i < length; i++)
  {
    for (int j = i + 1; j < length; j++)
    {
      if (list[j] == list[i])
      {
        list.removeAt(j);
        length--;
        j--;
      }
    }
  }

  name = list.join();

  print("\nString after removing duplicates : $name\n");
}

