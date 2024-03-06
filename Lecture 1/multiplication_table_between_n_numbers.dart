import 'dart:io';

void main()
{
    stdout.write("Enter n1 : ");
    int n1 = int.parse(stdin.readLineSync()!);
    stdout.write("Enter n2 : ");
    int n2 = int.parse(stdin.readLineSync()!);
    
    print("Multiplication table from $n1 to $n2\n");
    
    for(int i=n1; i<=n2; i++)
    {
        print("Table of $i");
        for(int j=1; j<=10; j++)
        {
            print("$i * $j = ${i * j}");
        }
        print("\n");
    }
}