import 'dart:io';

void main(){
  stdout.write("Enter a : ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Enter b : ");
  double b = double.parse(stdin.readLineSync()!);

  stdout.write("\nEnter choice : \n");
  print("Press 1 for addition : ");
  print("Press 2 for substraction : ");
  print("Pres 3 Multiplication : ");
  print("Press 4 for Module : ");
  print("Press 5 for Division : ");
  int choice = int.parse(stdin.readLineSync()!);
  
  switch(choice)
  {
    case 1 : print(add(a, b));
    break;
    case 2 : print(substraction(a, b));
    break;
    case 3 : print(multiplication(a, b));
    break;
    case 4 : print(module(a, b));
    break;
    case 5 : 
    if(b!=0){
      print(division(a, b));
    }
    else{
      print("Divide by zero is not possible...!");
    }
    break;
    default : print("Enter valid input(1 to 5)...!");
  }
}

double add(double a, double b) => a+b;

double substraction(double a, double b) => a-b;

double multiplication(double a, double b) => a*b;

double module(double a, double b) => a%b;

double division(double a, double b) => a/b;