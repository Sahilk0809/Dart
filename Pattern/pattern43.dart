import 'dart:io';

void main()
{
  int k;
  for(int i=1; i<=5; i++)
  {
    k=i-1;
    for(int j=1; j<=i; j++)
    {
        if(k!=13)
        {
          if(k!=15)
          {
            stdout.write('${k + i}'+' ');
          }
          else
          {
            stdout.write(k + i);
          }
        }
        else
        {
          stdout.write(k + i);
        }
      
     
      k+=2;
    }
    print('');
  }
}