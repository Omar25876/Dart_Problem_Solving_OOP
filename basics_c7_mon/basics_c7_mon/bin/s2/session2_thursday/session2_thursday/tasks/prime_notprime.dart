import 'dart:io';

void main(){
  ///null Safety on
  int x = int.parse(stdin.readLineSync()!);
  int count =0;
  for(int i = 1; i<= x;i++) {
    if(x % i == 0){
      count++;
    }
  }

  if(count == 2){
    print('Yes');

  }else{
    print('No');
  }

}