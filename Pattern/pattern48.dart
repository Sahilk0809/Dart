import 'dart:io';

void main()
{
  int k=1,l,m;
  for(int i=5; i>=1; i--)
  {
    l = i;
    m = k;
    for(int j=5; j>=i; j--)
    {
      stdout.write('$m ');
      m = m - l;
      l++;
    }
    k = k + i;
    print('');
  }
}