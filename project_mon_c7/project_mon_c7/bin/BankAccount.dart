import 'client.dart';
class BankAccount{
  static int IDS_GENERATOR =1000;// counter

  late int id;
  late double balance;
  late Client owner;
  // constructor
  BankAccount([this.balance = 0]){
    id = IDS_GENERATOR;
    IDS_GENERATOR++ ;
  }
  bool withdraw(double amount){
    // validation amount
    if(amount < 0){
      print('invalid amount, amount should > 0');
      return false;
    }
    if(amount > balance){
      print('invalid amount, amount should be <= $balance');
      return false;
    }

    balance -= amount;
    print('amount withdrawn successfully, your balance = $balance');
    return true;
  }
  bool deposit(double amount){
    if(amount < 0){
      print('invalid amount, amount should > 0');
      return false;
    }
    balance+= amount;
    return true;
  }
  void view(){
    print('Basic Bank Account');
    print('account Id $id');
    print('balance $balance');
    print('client Name : ${owner.name}');
    print('Client Phone ${owner.phone}');
  }
}
