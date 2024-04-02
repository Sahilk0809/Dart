import 'dart:io';

void main()
{
  List a = [1, 2, 3, 4, 5];

  try
  {
    print(a[6]);
  }
  on RangeError
  {
    print("\nList Size is more than 5... Upper bound is Invalid\n");
  }

}