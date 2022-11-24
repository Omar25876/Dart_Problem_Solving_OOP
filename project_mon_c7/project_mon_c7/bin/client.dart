// client owns BankAccount
// bank account belongs to a client
// generalization (inhiretence) is a ?
// assocciation ->  has a ?
//   -- composotion
//   -- composite aggregation (strong)
// team consists of ? players
import 'BankAccount.dart';

class Client{

  String name;
  String address;
  String phone;

  late BankAccount account;

  Client(this.name,this.address,this.phone);
  void view(){
    print('name $name');
    print('address $address');
    print('phone $phone');
  }
}
