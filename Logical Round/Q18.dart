// 18.Wap to to find frequency of each elements in array.


import 'dart:io';

void main()
{
  int n,i,num,j,f=1;
  List arr = [];

  stdout.write("Enter ths Size of an array : ");
  n = int.parse(stdin.readLineSync()!);

  stdout.write("\nEnter the Elements of Array.\n");

  for(i=0; i<n; i++)
  {
    stdout.write("Enter a arr[$i] : ");
    num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }

  for(i=0; i<n; i++)
  {
    for(j=i+1; j<n; j++)
    {
      if(arr[i] == arr[j])
      {
        arr[j] = 0;
        f++;
      }
    }

    if(arr[i] != 0)
    {
      stdout.write("${arr[i]} --> $f\n");
    }
    
    f=1;
  }

}
