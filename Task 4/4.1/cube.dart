import 'dart:io';

int cube(int c) => c * c * c;


void main(){
  stdout.write("Enter value : ");
  int c = int.parse(stdin.readLineSync()!);
  print(cube(c));
}