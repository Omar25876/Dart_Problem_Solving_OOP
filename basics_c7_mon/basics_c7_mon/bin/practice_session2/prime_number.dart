import 'dart:io';

void main(){

//
  int n = 4;
  int counter = 0;
  for(int i=1;i<=n;i++){
    if(n%i == 0){
      counter++;
    }
  }
  if(counter==2){
    print('$n is prime number');
  }else {
    print('$n is not prime number');
  }


  //
  // 1,2,3,4,5 i-> loop
  // *,X,X,X,*

  // n = 7
  // 2->6
  // 2,3,4,5,6 -> 7 is prime number
  // 1 <-      -> n
  // n = 6
  // 2,3,4,5
  // stop

  //6->2 ->stop

  n =5;
  bool isPrime= true;
  for(int i=2;i<n;i++){
    if(n%i==0){
      // stop
      isPrime =false;
      break;// exit from loop
    }
  }
  if(isPrime){
    print('$n is prime number');
  }else {
    print('$n is not prime');
  }


}