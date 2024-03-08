import 'dart:io';

void main()
{
  var id, name, age, salary;

  for(int i=0; i<3; i++)
  {
    stdout.write("Enter id : ");
    id = stdin.readLineSync();  
    stdout.write("Enter name : ");
    name = stdin.readLineSync(); 
    stdout.write("Enter age : ");
    age = stdin.readLineSync();
    stdout.write("Enter salary : ");
    salary = stdin.readLineSync();  

    Map <String,dynamic> emp1 = 
    {
    'emp_id' : id,
    'emp_name' : name,
    'emp_age' : age,
    'emp_salary' : salary,
    };
    stdout.write(emp1);
    print("\n");
  }
}