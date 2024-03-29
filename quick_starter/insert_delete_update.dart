import 'dart:io';

void main()
{
  List arr = [];
  int i,choice,n;

  stdout.write("Enter the size of an array : ");
  n = int.parse(stdin.readLineSync()!);

  for(i=0; i<n; i++)
  {
    stdout.write("Enter arr[$i] : ");
    int num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }

  do
  {
    stdout.write("\nPress 1 for Insert ");
    stdout.write("\nPress 2 for Delete ");
    stdout.write("\nPress 3 for Update ");
    stdout.write("\nPress 4 for Display ");
    stdout.write("\nPress 0 for Exit \n");
 
    stdout.write("\nEnter your Choice : ");
    choice = int.parse(stdin.readLineSync()!);

    switch(choice)
    {
      case 1 :
        insertValue(arr);
        break;

      case 2 :
        deleteValue(arr);
        break;

      case 3 :
        updateValue(arr);
        break;

      case 4 :
        displayArray(arr);
        break;

      case 0 :
        stdout.write("\nThank you for choosing...\n");
        break;

      default :
        stdout.write("\nEnter valid input (1,2,3,4)!!\n");
    }  
  }while(choice!=0);
}

void displayArray(List arr)
{
  stdout.write("\nDisplaying the elements of the array...\n");
  for(int i=0; i<arr.length; i++)
  {
    stdout.write("${arr[i]} ");
  }
}

void insertValue(List arr)
{
  int pos,elem;

  stdout.write("Enter the position : ");
  pos = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the element : ");
  elem = int.parse(stdin.readLineSync()!);

  if(pos < arr.length)
  {
    arr.insert(pos, elem);
    stdout.write("\nElement added Successfully...\n");
  }
  else
  {
    stdout.write("\nInvalid index of array...!");
  }

}

void deleteValue(List arr)
{
  int pos;

  stdout.write("Enter the Position : ");
  pos = int.parse(stdin.readLineSync()!);

  if(pos < arr.length)
  {
    arr.removeAt(pos);
    stdout.write("\nElement deleted Successfully...\n");
  }
  else
  {
    stdout.write("\nInvalid index of array...!");
  }
}

void updateValue(List arr)
{
  int pos,elem;

  stdout.write("Enter the position : ");
  pos = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the element : ");
  elem = int.parse(stdin.readLineSync()!);

  if(pos < arr.length)
  {
    arr.removeAt(pos);
    arr.insert(pos,elem);
    stdout.write("\nArray updated Successfully...\n");
  }
  else
  {
    stdout.write("\nInvalid index of array...!");
  }
}