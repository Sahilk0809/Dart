import 'dart:io';

void main()
{
    print("Press + for addition");
    print("Press - for substration");
    print("Press * for multiplication");
    print("Press / for division");
    print("Press % for module");
    
    //user input of operator
    stdout.write("Enter operator : ");
    String op = stdin.readLineSync()!;
    
    print("\n");
    stdout.write("Enter first value : ");
    double a = double.parse(stdin.readLineSync()!);
    stdout.write("Enter second value : ");
    double b = double.parse(stdin.readLineSync()!);
    
    print("\n");
  
    switch(op)
    {
        case '+' : print("$a + $b = ${a + b}");
        break;
        case '-' : print("$a - $b = ${a - b}");
        break;
        case '*' : print("$a * $b = ${a * b}");
        break;
        case '/' : 
        if(b!=0)
        {
            print("$a/$b = ${a/b}");
        }
        else
        {
            print("Can't divide by zero...!");
        }
        break;
        case '%' : print("$a % $b = ${a % b}");
        break;
        default : print("Enter valid operator...!");
    }
}