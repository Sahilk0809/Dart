import 'dart:io';

class Customer {
  late int cust_id;
  late double cust_contact;
  late String cust_name;
  late int pro_id;
  late String pro_name;
  late int pro_qty;
  late double pro_price;

  List pro = [];

  void setter() {
    stdout.write("Enter customer id : ");
    cust_id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter name : ");
    cust_name = stdin.readLineSync()!;
    stdout.write("Enter customer contact : ");
    cust_contact = double.parse(stdin.readLineSync()!);
  }

  void product() {
    int choice;

    print("Enter choice : ");
    print("Press 1 for Bakery products");
    print("Press 2 for Grocery");
    print("Press 3 for Diary products");
    print("Press 4 for Home appliances");
    print("Press 0 to exit");
    choice = int.parse(stdin.readLineSync()!);

    int product;
    int qty;

    switch (choice) {
      case 1:
        print("Press 1 for Bread");
        print("Press 2 for Biscuit");
        print("Press 3 for Cup Cake");
        product = int.parse(stdin.readLineSync()!);
        stdout.write("Enter quantity : ");
        qty = int.parse(stdin.readLineSync()!);
        switch (product) {
          case 1:
            print("\nBread added successfully in the cart...");
                pro_id =  1;
                pro_name = 'Bread';
                pro_qty = qty;
                pro_price = qty * 20.0;
            add();
            break;
          case 2:
            print("\nBiscuit added successfully in the cart...");
                pro_id = 2;
                pro_name = 'Biscuit';
                pro_qty = qty;
                pro_price = qty * 10.0;
            add();
            break;
          case 3:
            print("\nCup Cake added successfully...");
            pro_id = 3;
            pro_name = 'Cup Cake';
            pro_qty = qty;
            pro_price = qty * 20.0;
            add();
            break;
          default:
            print("Enter valid input(1 to 3)...!");
        }
        break;
      case 2:
        print("Press 1 for Rice");
        print("Press 2 for Maize");
        print("Press 3 for Sugar");
        product = int.parse(stdin.readLineSync()!);
        stdout.write("Enter quantity : ");
        qty = int.parse(stdin.readLineSync()!);
        switch (product) {
          case 1:
            print("\nRice added successfully in the cart...");
                pro_id = 4;
                pro_name = 'Rice';
                pro_qty = qty;
                pro_price = qty * 55;
            add();
            break;
          case 2:
            print("\nMaize added successfully in the cart...");
                pro_id = 5;
                pro_name = 'Maize';
                pro_qty = qty;
                pro_price = qty * 66.66;
            add();
            break;
          case 3:
            print("\nSugar added successfully in the cart...");
                pro_id = 6;
                pro_name = 'Sugar';
                pro_qty = qty;
                pro_price = qty * 45.53;
            add();
            break;
          default:
            print("Enter valid input(1 to 3)...!");
        }
        break;
      case 3:
        print("Press 1 for Milk");
        print("Press 2 for Curd");
        print("Press 3 for Paneer");
        product = int.parse(stdin.readLineSync()!);
        stdout.write("Enter quantity : ");
        qty = int.parse(stdin.readLineSync()!);
        switch (product) {
          case 1:
            print("\nMilk added successfully in the cart...");
                pro_id = 7;
                pro_name = 'Milk';
                pro_qty = qty;
                pro_price = qty * 31.20;
            add();
            break;
          case 2:
            print("\nCurd added successfully in the cart...");
                pro_id = 8;
                pro_name = 'Curd';
                pro_qty = qty;
                pro_price = qty * 30.0;
            add();
            break;
          case 3:
            print("\nPaneer added successfully in the cart...");
                pro_id = 9;
                pro_name = 'Paneer';
                pro_qty = qty;
                pro_price = qty * 135.67;
            add();
            break;
          default:
            print("Enter valid input(1 to 3)...!");
        }
        break;
      case 4:
        print("Press 1 for Gas Stove");
        print("Press 2 for Cooker");
        print("Press 3 for Pan");
        product = int.parse(stdin.readLineSync()!);
        stdout.write("Enter quantity : ");
        qty = int.parse(stdin.readLineSync()!);
        switch (product) {
          case 1:
            print("\nGas Stove added successfully in the cart...");
                pro_id = 10;
                pro_name = 'Gas Stove';
                pro_qty = qty;
                pro_price = qty * 1200.68;
            add();
            break;
          case 2:
            print("\nCooker added successfully in the cart...");
                pro_id = 11;
                pro_name = 'Cooker';
                pro_qty = qty;
                pro_price = qty * 733.95;
            add();
            break;
          case 3:
            print("\nPan added successfully in the cart...");
                pro_id = 12;
                pro_name = 'Pan';
                pro_qty = qty;
                pro_price = qty * 250.63;
            add();
            break;
          default:
            print("Enter valid input(1 to 3)...!");
        }
        break;
        case 0 :
        print("Thank you for coming...!");
        default : 
        print("Enter valid input...!");
  }
    
}

  void add(){
    print("Do you want to add more products...!");
    print("Press 1 for yes...");
    print("Press any digit to exit...!");
    int choice = int.parse(stdin.readLineSync()!);

    pro.add(
      {
        'pro_id' : pro_id,
        'pro_name' : pro_name,
        'pro_price' : pro_price,
        'pro_qty' : pro_qty,
      }
    );

    if(choice == 1){
      custCart(pro_id: pro_id, pro_name: pro_name, pro_price: pro_price, pro_qty: pro_qty);
      product();
    }
    else{
      custCart(pro_id: pro_id, pro_name: pro_name, pro_price: pro_price, pro_qty: pro_qty);
      print("Thank you for choosing...!");
    }
  }

  void custCart(
      {int? pro_id, String? pro_name, int? pro_qty, double? pro_price}) {
      print("Product : $pro_name");
      print("Product id : $pro_id");
      print("Quantity : $pro_qty");
      print("Price : $pro_price\n");
      if (pro_price! >= 500 && pro_price <= 1500) {
        pro_price = pro_price - pro_price / 10;
      } else if (pro_price >= 1500 && pro_price <= 3500) {
        pro_price = pro_price - pro_price / 20;
      } else if (pro_price >= 3500 && pro_price <= 6500) {
        pro_price = pro_price - pro_price / 25;
      } else if (pro_price > 6500) {
        pro_price = pro_price - pro_price / 30;
      }
  }
  void total(){
    print("\nYour products : $pro");
  }
}

void main() {
  Customer c1 = Customer();
  List l1 = [];
  stdout.write("Enter the no. of customer : ");
  int size = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < size; i++) {
    c1.setter();
    l1.add(c1);
  }
  for (int i = 0; i < size; i++) {
    c1.product();
  }
  c1.total();
}
