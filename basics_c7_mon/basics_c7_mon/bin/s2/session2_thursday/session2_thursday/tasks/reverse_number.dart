import 'dart:io';

void main(){
  ///null Safety on
  int n = int.parse(stdin.readLineSync()!);
  int rev = 0;

  while(n != 0){
    int dig = n % 10;
    rev = ( rev * 10 ) + dig;
    n ~/= 10;
  }
  stdout.write(rev);
  
}