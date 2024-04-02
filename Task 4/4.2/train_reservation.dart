import 'dart:async';
import 'dart:io';

class Railway
{
  late String train_Name, source, destination, train_Time;
  late double train_Number;

  void setter(){
    stdout.write("Enter train no. : ");
    train_Number = double.parse(stdin.readLineSync()!);
    stdout.write("Enter train name : ");
    train_Name = stdin.readLineSync()!;
    stdout.write("Enter source : ");
    source = stdin.readLineSync()!;
    stdout.write("Enter destination : ");
    destination = stdin.readLineSync()!;
    stdout.write("Enter train time : ");
    train_Time = stdin.readLineSync()!;
  }
  void getter(){
    print("Train number : $train_Number");
    print("Train name : $train_Name");
    print("Source : $source");
    print("Destination : $destination");
    print("Train timw : $train_Time");
  }
}

void main(){
  Railway r1 = Railway();
  List <Railway> l1 = [];

  print("Enter 3 train details : ");

  for(int i = 0; i < 2; i++){
    Railway r1 = Railway();
    r1.setter();
    l1.add(r1);
  }
  int choice;
  do {
    print("Press 1 to display details : ");
    print("Press 2 to search by train number : ");
    print("Press 0 to exit");
    stdout.write("------Enter your choice------\n");
    choice = int.parse(stdin.readLineSync()!);
    switch(choice){
      case 1 : 
      for(int i = 0; i < l1.length; i++){
        l1[i].getter();
      }
      break;
      case 2 :
      print("Enter train no. : ");
      double train_number = double.parse(stdin.readLineSync()!);

      for(int i = 0; i < l1.length; i++){
        if(train_number == l1[i].train_Number){
          l1[i].getter();
          break;
        }
        else{
          print("Train not found...!");
        }
      }
      break;
      default : print("Enter valid input...!");
    }
  }while(choice != 0);
  if(choice == 0){
    print("Thank you for choosing...!");
  }
}