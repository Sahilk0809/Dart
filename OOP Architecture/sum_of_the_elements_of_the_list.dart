import 'dart:io';

int add({List <int>? l1}) {
  int sum = 0;
  for (int i = 0; i < l1!.length; i++) {
    sum = sum + l1[i];
  }
  return sum;
}

void main() {
  List<int> l1 = [];
  int num;
  stdout.write("Enter the size of the list : ");
  int size = int.parse(stdin.readLineSync()!);

  print("Enter the value of list : ");
  for (int i = 0; i < size; i++) {
    num = int.parse(stdin.readLineSync()!);
    l1.add(num);
  }
  print("List $l1");
  stdout.write("Sum of the elements of the list : ");
  print(add(l1: l1));
}
