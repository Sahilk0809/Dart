import 'dart:io';

void main(){
  stdout.write("Enter a : ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Enter b : ");
  double b = double.parse(stdin.readLineSync()!);

  double sum = add(a: a, b: b);
  print("$a + $b : $sum");
}
double add({double? a, double? b}) => a!+b!;