import 'dart:io';

import 'BankAccount.dart';
import 'SavingsBankAccount.dart';
import 'client.dart';

class BankingSystem{
  late List<BankAccount> allAccounts;
  late List<Client> allClients;
  BankingSystem(){
    allClients = [];
    allAccounts = [];
    addTestData();
  }
  void addTestData(){
    // to add data to the empty lists
    for(int i=0;i<20;i++){
      var account = BankAccount(i*1000);// 0 , 1000,2000
      var client  = Client('client num $i','qwert','1234567');
      account.owner = client;
      client.account = account;
      allAccounts.add(account);
      allClients.add(client);
    }
  }
  void showAllAccounts(){
    print('--------------------');
    for(int i=0;i<allAccounts.length;i++){
      allAccounts[i].view();
      print('--------------------');
    }
    print('--------------------');
  }
  BankAccount? getAccountById(int accountId){
    for(int i=0;i<allAccounts.length;i++){
      if(accountId == allAccounts[i].id){
        return allAccounts[i];// return object
      }
    }
    return null;// not found
  }
  int getAccountIndexById(int accountId){
    for(int i=0;i<allAccounts.length;i++){
      if(accountId == allAccounts[i].id){
        return i;// return index of object
      }
    }
    return -1;
  }
  void showAccountDetails(){
    print('please enter account id ');
    var accountId = int.parse(stdin.readLineSync()!);
    // var index = getAccountIndexById(accountId);
    // if(index==-1){
    //   print('invalid account id');
    //   return;
    // }
    // allAccounts[index].view();
    var account = getAccountById(accountId);
//    account =null
    if(account==null){
      print('invalid account id');
      return;
    }
    // account exists
    print('-------------------');
    account.view();
    print('-------------------');
  }
  void deleteAccount(){
    print('please enter account id ');
    var accountId = int.parse(stdin.readLineSync()!);
    var account = getAccountById(accountId);
    if(account==null){
      print('invalid account id');
      return;
    }

    allAccounts.remove(account);
    allClients.remove(account.owner);
    print('account removed successfully');
  }
  void withdraw(){
    print('please enter account id ');
    var accountId = int.parse(stdin.readLineSync()!);
    var account = getAccountById(accountId);
    if(account==null){
      print('invalid account id');
      return;
    }
    print('please enter amount to withdraw');
    var amount = double.parse(stdin.readLineSync()!);
    if(account.withdraw(amount)){
      print('successful transaction');
    }
  }
  void deposit(){
    print('please enter account id ');
    var accountId = int.parse(stdin.readLineSync()!);
    var account = getAccountById(accountId);
    if(account==null){
      print('invalid account id');
      return;
    }
    print('please enter amount to deposit');
    var amount = double.parse(stdin.readLineSync()!);
    if(account.deposit(amount)){
      print('successful transaction');
    }
  }
  void createAccount(){

    print('please enter client name');
    var name = stdin.readLineSync()!;
    print('please enter client address');
    var address = stdin.readLineSync()!;
    print('please enter client phone');
    var phone = stdin.readLineSync()!;
    var client = Client(name, address, phone);

    print('''please enter account type
         1- Basic account
         2- Savings BankAccount''');
    var accountType = int.parse(stdin.readLineSync()!);

    print('please enter initial Balance');
    var balance = double.parse(stdin.readLineSync()!);

    // runtime polymorphism
    BankAccount account;
    if(accountType==1){
      account = BankAccount(balance);
    }else if(accountType==2){
      account = SavingsBankAccount(balance);
    }else {
      print('invalid input');
      return;
    }

    client.account = account;
    account.owner = client;

    allClients.add(client);
    allAccounts.add(account);
    print('account created successfully');
  }
  void showMenu(){
    while(true){

      print('1- create account');
      print('2- show all accounts');
      print('3- show account details (search for account');
      print('4- delete account');
      print('5- withdraw');
      print('6- deposit');
      print('7- Exit');
      var option = int.parse(stdin.readLineSync()!);

      if(option==1){
        createAccount();
      }else if(option==2){
        showAllAccounts();
      }else if(option==3){
        showAccountDetails();
      }else if(option==4){
        deleteAccount();
      }else if(option==5){
        withdraw();
      }else if(option==6){
        deposit();
      }else if(option==7){
        return;
      }
    }
  }

}
void main(){

  BankingSystem bankingSystem = BankingSystem();
  bankingSystem.showMenu();
  // var account = BankAccount(1000);
  // var client = Client('Mohamed','qwer','3245',);
  //
  // account.owner = client;
  // client.account = account;
  //
  // account.view();

}