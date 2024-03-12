import 'dart:io';

void main() {
  stdout.write("Enter the size of the array : ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> element = [];

  for (int i = 0; i < n; i++) {
    stdout.write("Element ${"[$i]"}");
    element.add(int.parse(stdin.readLineSync()!));
  }

  print("Enter 0 for Left rotate");
  print("Enter 1 for Right rotate");
  stdout.write("Enter how you have to rotate the array : ");
  int a = int.parse(stdin.readLineSync()!);
  if (a == 1) {
    print("Here is your right rotate : ");
  } else {
    print("Here is your left rotate : ");
  }
  if (a == 1) {
    for (int i = n - 1; i >= 0; i--) {
      print(element[i]);
    }
  } else {
    for (int i = n - 1; i >= 0; i--) {
      print(element[i]);
    }
  }
}
