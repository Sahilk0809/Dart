import 'dart:io';

void main()
{
  List<int> arr = [];
  var max;
  int n,i;

  stdout.write("Enter the size of array : ");
  n = int.parse(stdin.readLineSync()!);

  for(i=0; i<n; i++)
  {
    stdout.write("Enter arr[$i] : ");
    int num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }
  
  max = arr[0];

  for(i=0; i<n; i++)
  {
    if(arr[i] > max)
    {
        max = arr[i];
    }
  }
  stdout.write("\nMaximum element of the array is : $max");

}