import 'dart:io';

void main(){
  List l1 = [];

  stdout.write("Enter list size : ");
  int size = int.parse(stdin.readLineSync()!);

  for(int i=0; i<size; i++){
    l1.add(stdin.readLineSync()!);
  }
  print(unique(l1));
}

List unique(List l1) => l1.toSet().toList();