import 'dart:io';

void main()
{
  List<int> arr = [];
  List<int> negativeElement = [];
  int n,i,check=1;

  stdout.write("Enter the size of array : ");
  n = int.parse(stdin.readLineSync()!);

  for(i=0; i<n; i++)
  {
    stdout.write("Enter arr[$i] : ");
    int num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }

  for(i=0; i<n; i++)
  {
    if(arr[i] < 0)
    {
      check = 0;
      negativeElement.add(arr[i]);
    }
  }

  if(check == 1)
  {
    stdout.write("\nAll Element are Positive...\n");
    print(arr);
  }
  else
  {
    stdout.write("\nAll Negative Element are Below :\n");
    print(negativeElement);
  }

}