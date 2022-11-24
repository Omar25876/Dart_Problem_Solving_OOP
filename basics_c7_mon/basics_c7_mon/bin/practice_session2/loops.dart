import 'dart:io';

void main(){
  // print(1);
  // print(2);
  // print(3);
  // for -> iterator
  //  initialize ; stop condition ; step
  //      i=6    ;  F   ;
  // for(int i =1 ; i<=5 ; i++){
  //   print(i);
  // }
  // print even numbers from 1->100

  // 1 2 3 4 5 6->100
  // i i i i i i i i i i i
//  100 -> constant
  for(int i=1;i<=100;i++){
    if(i%2==0){
      print(i);
    }
  }
  int n =10000;  // n
  // print even numbers from 1 -> n
  for(int i=1;i<=n;i++){
    if(i%2==0) {
      print(i);
    }
  }
  //2,4,6,8-> 100
//  50 -> constant
  for(int i=2 ;i<=100;i+=2){
    print(i);
  }

  // task search for Big notation - time complexity

}