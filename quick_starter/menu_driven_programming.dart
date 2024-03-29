import 'dart:io';

void main()
{
  List arr = [];
  int i,j,choice,length;

  for(i=0; i<3; i++)
  {
    arr.add([]);
    for(j=0; j<3; j++)
    {
      stdout.write("Enter arr[$i][$j] : ");
      int num = int.parse(stdin.readLineSync()!);
      arr[i].add(num);
    }
  }

  for(i=0; i<3; i++)
  {
    for(j=0; j<3; j++)
    {
      stdout.write("${arr[i][j]} ");
    }
    print("\n");
  }
  length = arr.length;

  do
  {
    stdout.write("\nPress 1 for the sum of the elements");
    stdout.write("\nPress 2 for the Sum of the specific row");
    stdout.write("\nPress 3 for the sum of the specific column");
    stdout.write("\nPress 4 for the sum of the diagonal elements");
    stdout.write("\nPress 5 for the sum of the anti-diagonal elements");
    stdout.write("\nPress 0 for the Exit");
    stdout.write("\nEnter your Choice : ");
    choice = int.parse(stdin.readLineSync()!);

    switch(choice)
    {
      case 1 :
        SumOfAllElement(arr,length);
        break;

      case 2 :
        SumOfRow(arr,length);
        break;

      case 3 :
        SumOfColumn(arr,length);
        break;

      case 4 :
        SumOfDiagonalElements(arr,length);
        break;

      case 5 :
        SumOfAnitDiagonalElements(arr,length);
        break;

      case 0 :
        stdout.write("\nThank you for choosing...\n");
        break;

      default :
        stdout.write("\nEnter valid Choice (1,2,3,4,5,0)\n");
    }

  }while(choice != 0);
}

void SumOfAllElement(List arr,int length)
{
  int sum=0,temp;
  for(int i=0; i<length; i++)
  {
    for(int j=0; j<length; j++)
    {
      temp = arr[i][j];
      sum = sum + temp;
    }
  }

  stdout.write("\nSum of all the elements is : $sum\n");
}

void SumOfRow(List arr,int length)
{
  int sum=0,temp;
  for(int i=0; i<arr.length; i++)
  {
    sum = 0;
    for(int j=0; j<arr.length; j++)
    {
      temp = arr[i][j];
      sum = sum + temp;
    }
    stdout.write("\nSum of ${i+1} rows is : $sum\n");
  }
}

void SumOfColumn(List arr,int length)
{
  int sum=0,temp;
  for(int i=0; i<length; i++)
  {
    sum = 0;
    for(int j=0; j<length; j++)
    {
      temp = arr[j][i];
      sum = sum + temp;
    }
    stdout.write("\nSum of ${i+1} column is : $sum\n");
  }

}

void SumOfDiagonalElements(List arr,int length)
{
  int sum=0,temp;
  for(int i=0; i<length; i++)
  {
    for(int j=0; j<length; j++)
    {
      if(i == j)
      {
        temp = arr[i][j];
        sum = sum + temp;
      }

    }
  }
  stdout.write("\nSum of diagonal elements is : $sum\n");
}

void SumOfAnitDiagonalElements(List arr,int length)
{
  int sum=0,temp,rows=3;
  for(int i=0; i<length; i++)
  {
    for(int j=0; j<length; j++)
    {
      temp = arr[i][j];
      if(i+j == rows-1)
      {
        sum = sum + temp;
      }
    }
  }
  stdout.write("\nSum of Anit-Diagonal elements is : $sum\n");
}