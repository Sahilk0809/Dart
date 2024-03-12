
import 'dart:io';

void main()
{
  stdout.write("Enter the value :");
  int n = int.parse(stdin.readLineSync()!);

  List<int> element=[];

  int i,j;

  for(i=0; i<n; i++)
  {
    stdout.write("Enter the Array element :${"[$i]"}");
    element.add(int.parse(stdin.readLineSync()!));
  }
  int acc;
  for(i=0; i<n; i++)
  {
    for(j=i+1; j<n; j++)
    {
      if(element[i]>element[j])
      {
        acc=element[i];
        element[i]=element[j];
        element[j]=acc;
      }
    }
  }
  for(i=0; i<n; i++)
  {
    print(element[i]);
  }
 
}