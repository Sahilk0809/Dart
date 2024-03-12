import 'dart:io';

void main()
{
    stdout.write("Enter the value of A :");
    String a=stdin.readLineSync()!;
    int frist=int.parse(a);

    
    int b = frist % 10;

    while(frist>10)
    {
     frist = frist ~/ 10;
    }
    print("$frist + $b = ${frist + b}");
    
    
}