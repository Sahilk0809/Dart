import 'dart:io';

void main()
{
  List firstArray = [],secondArray = [],sumOfArray = [];
  int num;

  print("Enter the elements of the first array : ");
  for(int i=0; i<3; i++)
  {
    firstArray.add([]);
    for(int j=0; j<3; j++)
    {
      stdout.write("Enter a[$i][$j] : ");
      num = int.parse(stdin.readLineSync()!);
      firstArray[i].add(num);
    }
  }

  print("\nEnter the elements of the second array : ");
  for(int i=0; i<3; i++)
  {
    secondArray.add([]);
    for(int j=0; j<3; j++)
    {
      stdout.write("Enter b[$i][$j] : ");
      num = int.parse(stdin.readLineSync()!);
      secondArray[i].add(num);
    }
  }

  for(int i=0; i<3; i++)
  {
    sumOfArray.add([]);
    for(int j=0; j<3; j++)
    {
      sumOfArray[i].add(firstArray[i][j] + secondArray[i][j]);
    }
  }

  print("\nFirst array : ");
  print(firstArray);
  print("\nSecond array : ");
  print(secondArray);
  print("\nSum of the arrays : ");
  print(sumOfArray);
}