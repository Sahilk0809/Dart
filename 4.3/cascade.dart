import 'dart:io';

class cascade
{
  late var name, age, rollno;

  void setter(){
    stdout.write("Enter the name : ");
    name = stdin.readLineSync()!;
    stdout.write("Enter the age : ");
    age = int.parse(stdin.readLineSync()!);
    stdout.write("Enter your Roll : ");
    rollno = int.parse(stdin.readLineSync()!);
  }
  void getter(){
    print("Name : $name");
    print("Roll no : $rollno");
    print("Age : $age");
  }
}

void main(){
  cascade c = cascade();

  c..setter()
   ..getter();
}