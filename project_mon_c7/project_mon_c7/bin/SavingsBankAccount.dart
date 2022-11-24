import 'BankAccount.dart';

class SavingsBankAccount extends BankAccount{

  double minimumBalance;

  SavingsBankAccount(double balance,[this.minimumBalance =1000]):super(balance);

  @override
  bool withdraw(double amount) {
    // balance > = minBalance
    if(balance - amount < minimumBalance){
      print('invalid amount, balance should be > minBalance');
      return false;
    }
    return super.withdraw(amount);
  }
  @override
  bool deposit(double amount) {
    if(amount<100){
      print('invalid amount. amount should be > 100');
      return false;
    }
    return super.deposit(amount);
  }
  @override
  void view() {
    print('Savings Bank Account');
    print('id $id');
    print('balance $balance');
    print('minBalance $minimumBalance');
    print('client Name : ${owner.name}');
    print('Client Phone ${owner.phone}');
  }
}