import 'dart:io';
import 'bank.dart';
import 'factory_constructor.dart';

void main(){
  List <BankModel> bankModellist = [];

  for(int i = 0; i < bankData.length; i++){
    BankModel bm1 = BankModel.frombanking(Banking: bankData[i]);
    bankModellist.add(bm1);
  }
  for(int i = 0; i < bankModellist.length; i++){
    print(bankModellist[i].name);
    print(bankModellist[i].age);
    print(bankModellist[i].email);
    print(bankModellist[i].phone);
    print(bankModellist[i].isActive);
    print(bankModellist[i].balance);
    print(bankModellist[i].gender);
    print(bankModellist[i].eyeColor);
    print(bankModellist[i].address);
    print(bankModellist[i].company);
  }
  
}