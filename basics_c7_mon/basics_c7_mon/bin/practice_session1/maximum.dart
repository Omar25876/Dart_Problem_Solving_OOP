import 'dart:ffi';
import 'dart:io';

void main(){
  int n1 = int.parse(stdin.readLineSync());
  int n2 = int.parse(stdin.readLineSync());
  int n3 = int.parse(stdin.readLineSync());

  //  5 ,20 ,3
  // take 3 variables input from user
  // print maximum and minimum

  if(n1>n2 && n1>n3){
    print('max is $n1');
    if(n2<n3){
      print('min is $n2');
    }else{
      print('min is $n3');
    }
  }else if(n2>n1 && n2>n3){
    print('max is $n2');
    if(n1<n3){
      print('min is $n1');
    }else{
      print('min is $n3');
    }
  }else {
    print('max is $n3');
    if(n2<n1){
      print('min is $n2');
    }else{
      print('min is $n1');
    }
  }
}