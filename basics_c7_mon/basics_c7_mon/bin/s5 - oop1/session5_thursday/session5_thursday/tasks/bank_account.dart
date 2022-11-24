
void main(){
  ///null Safety on
  BankAccount e1 = BankAccount();
  e1.accountId = 1;
  e1.balance = 10;
  e1.depomony = 5;
  e1.withdmony = 2;
  e1.withdraw();
  e1.deposit();
  e1.viewall();

}

class BankAccount {
  int? accountId;
  double? balance;
  double? withdmony;
  double? depomony;

  BankAccount()
  {
     balance = 0;
  }
   BankAccount.init(this.balance);

  void withdraw() {
    if (balance! > 0) {
      balance = balance! - withdmony!;
    }
  }

  void deposit() {
    balance = balance! + depomony!;
  }


  void viewall() {
    print('Account Id =  $accountId');
    print('Deposit =  $depomony');
    print('Withdraw =  $withdmony');
    print('Balance =  $balance');
  }
}
