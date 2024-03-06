import 'dart:io';

void main()
{
    stdout.write("Enter first name : ");
    String firstName = stdin.readLineSync()!;
    stdout.write("Enter last name : ");
    String lastName = stdin.readLineSync()!;
    
    print("Full Name : $firstName $lastName");
}