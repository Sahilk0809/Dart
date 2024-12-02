import 'dart:io';

abstract class BankAccount {
  String? _accountNumber;
  double? _balance, _amount, _withdraw;

  void deposit({required double amount});

  void withdrawl({required double withdraw});

  void checkBalance();
}

class SavingAccount extends BankAccount {

  double _interestRate = 0.5;

  void setter() {
    stdout.write("Enter Account no.: ");
    _accountNumber = stdin.readLineSync()!;
    stdout.write("Enter balance: ");
    _balance = double.parse(stdin.readLineSync()!);
  }

  void setInterestRate(double interestRate) {
    if (interestRate >= 0 && interestRate <= 1) {
      _interestRate = interestRate;
      print("Interest rate set to $_interestRate");
    } else {
      print("Invalid interest rate. Must be between 0 and 1.");
    }
  }

  @override
  void deposit({required double amount}) {
    this._amount = amount;

    this._balance = this._balance! + this._amount!;
  }

  @override
  void withdrawl({required double withdraw}) {
    this._withdraw = withdraw;

    _balance = _balance! - this._withdraw!;
  }

  @override
  void checkBalance() {
    print("Balance: $_balance");
  }
}

void main() {
  SavingAccount savingAccount = SavingAccount();

  int choice;

  savingAccount.setter();

  while (true) {
    stdout.write("Enter 1 for deposit: \n");
    stdout.write("Enter 2 for withdrawl: \n");
    stdout.write("Enter 3 for check balance: \n");
    stdout.write("Enter 4 for interest: \n");
    stdout.write("Enter 5 for exit: \n");
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        stdout.write("Enter amount for deposit: ");
        double amount = double.parse(stdin.readLineSync()!);
        savingAccount.deposit(amount: amount);
        break;

      case 2:
        stdout.write("Enter amount to withdrawl: ");
        double amount = double.parse(stdin.readLineSync()!);
        savingAccount.withdrawl(withdraw: amount);
        break;

      case 3:
        savingAccount.checkBalance();
        break;

        case 4:
        stdout.write("Enter interest: ");
        double rate = double.parse(stdin.readLineSync()!);
        savingAccount.setInterestRate(rate);
        break;

       case 5: return;

      default:
        print("Enter valid value: ");
    }
  }
}
