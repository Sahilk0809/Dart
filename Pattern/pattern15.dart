  import 'dart:io';

void main()
{
  int k,l;
  for(int i=1; i<=5; i++)
  {
    k=i;
    l=5-i+1;
    for(int j=1; j<=5; j++)
    {
      if(j % 2 == 0)
      {
        stdout.write('$k ');
      }
      else
      {
        stdout.write('$l ');
      }
      k+=5;
      l+=5;
    }
    print('');
  }
}