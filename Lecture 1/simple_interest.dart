import 'dart:io';

void main()
{
    stdout.write("Enter principle amount : ");
    double principle = double.parse(stdin.readLineSync()!);
    stdout.write("Enter duration in years : ");
    double time = double.parse(stdin.readLineSync()!);
    stdout.write("Enter rate per annum : ");
    double rate = double.parse(stdin.readLineSync()!);
    
    double simpleInterest = (principle * rate * time)/100;
    
    print("Simple Interest : $simpleInterest");
}