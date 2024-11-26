import 'dart:io';

void main()
{
  int k;
  for(int i=1; i<=5; i++)
  {
    k=5-i+1;
    for(int j=1; j<=5; j++)
    {
      stdout.write('$k ');
      k+=5;
    }
    print('');
  }
}