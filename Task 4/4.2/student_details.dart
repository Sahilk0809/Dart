import 'dart:io';

class Student{
  String? name;
  int? id, age;

  void setter(){
    stdout.write("Enter name : ");
    name = stdin.readLineSync()!;
    stdout.write("Enter age : ");
    age = int.parse(stdin.readLineSync()!);
    stdout.write("Enter id : ");
    id = int.parse(stdin.readLineSync()!);
  }
  void getter(){
    print("\nID : $id");
    print("Name : $name");
    print("Age : $age");
  }
}

void main(){
  List<Student> l1=[];
  stdout.write("Enter the no. of students detail you want : ");
  int size = int.parse(stdin.readLineSync()!);

  for(int i=0; i<size; i++){
      Student s1=Student();
      s1.setter();
      l1.add(s1);
  }
  for(int i=0; i<size; i++){
    l1[i].getter();
  }
}