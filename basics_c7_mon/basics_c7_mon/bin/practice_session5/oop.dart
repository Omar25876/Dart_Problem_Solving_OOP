// void printAllProducts(
//     List<String> names,
//     List<String> serialNumbers,
//     List<int> quantities,
//     List<double> prices){
//   for(int i=0;i<names.length;i++){
//     print(names[i]);
//     print(prices[i]);
//     print(quantities[i]);
//     print(serialNumbers[i]);
//   }
// }

// Employee(this.name,this.nationalId,this.gender){

//}
// Employee.init(){
//
// }
class Product{
  int id;// instance member
  String name;
  double price;
  static String marketName = 'Hyper1';// shared class
  // Product(int id,String name,double price){// primary constructor
  //   this.id = id;
  //   this.name = name;
  //   this.price = price;
  // }

  Product(this.id,this.name,this.price);// primary constructor
  Product.fromId(this.id);// named constructor
  Product.init(){
    id = 0;
    name='';
    price= 0;
  }

  // non-static context can access static members
  void viewProductInfo(){
    print('id $id');
    print('name $name');
    print('price $price');
    print('market Name $marketName');
  }

  static void printMarketName(){
    print(marketName);// static can access only static members
  //  print(id);// invalid syntax
  }

}

void main(){

  // Encapsulation

  Product p = Product(10,'pepsi',5);// object // new Product -> initialization Product()-> default constructor
  Product p1 = Product(11, 'cola', 6);
  p.viewProductInfo();
  print('----------------');
  p1.viewProductInfo();

  Product.printMarketName();

  Product.marketName = 'Carrfour';
  print('+++++++++++++++++++');
  p.viewProductInfo();
  print('----------------');
  p1.viewProductInfo();

}