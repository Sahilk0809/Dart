import 'dart:io';

class Feet
{
  late var feet, inch;

  void setter(){
    stdout.write("Enter feet : ");
    feet = int.parse(stdin.readLineSync()!);
    stdout.write("Enter inch : ");
    inch = int.parse(stdin.readLineSync()!);
  }
  void convert(){
    feet = (inch ~/ 12) + feet;
    inch = inch % 12;
  }
  void getter(){
    print("\n$feet and $inch");
  }
}

void main(){
  Feet f = Feet();
  f.setter();
  f.convert();
  f.getter();
}