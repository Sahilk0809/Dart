import 'dart:io';

void main()
{
  for(int i=5; i>=1; i--)
  {
    for(int j=5; j>=i; j--)
    {
      stdout.write('$j ');
    }
    print('');
  }
}