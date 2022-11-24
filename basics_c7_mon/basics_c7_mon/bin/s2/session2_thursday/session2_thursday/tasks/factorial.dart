import 'dart:io';

void main(){
  ///null Safety on
  int n = int.parse(stdin.readLineSync()!);
  int fact = 1;

  for(int i = 1; i<= n ;i++){

    fact *= i;
  }
  print('Factorial $n = !$n = $fact');

}