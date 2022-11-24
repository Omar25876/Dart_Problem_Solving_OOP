import 'dart:io';

void main(){
  print('please enter 2 numbers');
 int n1 = int.parse(stdin.readLineSync());
 int n2 = int.parse(stdin.readLineSync());

 print('''- 1 add 
      - 2 subtract
      - 3 multiplication
      - 4 division''');

 int choice =int.parse(stdin.readLineSync());

  if(choice==1){
    print('n1+n2 ${n1+n2}');
  }else if(choice==2){
    print('n1-n2 ${n1-n2}');
  }else if(choice==3){
    print('n1*n2 ${n1*n2}');
  }else if(choice==4){
    print('n1/n2 ${n1/n2}');
  }
  //  // calculator
  // - take 2 numbers input from user
  // -  show this menu
  //   - 1 add
  //   - 2 subtract
  //   - 3 multiplication
  //   - 4 division
  // - take user choice
  // print result based on user choice
  //
  // 4 10
  // 1
  // 14
}