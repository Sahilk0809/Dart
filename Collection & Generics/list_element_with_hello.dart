import 'dart:io';

void main()
{
  List l1=[1,2,3];
  List l2;
  l2=l1.map((element) => element.toString()+" hello").toList();
  print(l2);
}