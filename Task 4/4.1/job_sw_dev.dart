import 'dart:io';

void main(){
  double math,eng,phy,chem,comp;
  double result;

  print("\n----------------Enter your marks--------------------\n");
  stdout.write("Maths : ");
  math = double.parse(stdin.readLineSync()!);
  stdout.write("English : ");
  eng = double.parse(stdin.readLineSync()!);
  stdout.write("Physics : ");
  phy = double.parse(stdin.readLineSync()!);
  stdout.write("Chemistry : ");
  chem = double.parse(stdin.readLineSync()!);
  stdout.write("Computer : ");
  comp = double.parse(stdin.readLineSync()!);

  result = calculatePercentage(math: math, eng: eng, phy: phy, chem: chem, comp: comp);
  print("Percentage : $result %");
}

calculatePercentage({
  required double math, required double eng, required double phy, required double chem, required double comp}
  ) => ((math + eng + phy + chem + comp) * 100)/500;