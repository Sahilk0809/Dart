import 'dart:io';

void main()
{
  int k=0;
  for(int i=1; i<=4; i++)
  {
    k+=i;
    for(int j=k; j>k-i; j--)
    {
      stdout.write('$j ');
    }
    print('');
  }
}