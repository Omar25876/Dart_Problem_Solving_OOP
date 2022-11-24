import 'dart:io';

void main(){
  ///null Safety on
  print('How many Number You want to check ? ');
  int n = int.parse(stdin.readLineSync()!);
  print('Enter Numbers : ');
  int countpositive = 0;
  int countnegative = 0;
  int countzero = 0;
  for(int i = 0 ; i <= n ; i++){
    i = int.parse(stdin.readLineSync()!);
    if(i > 0){
      countpositive++;
    }
    else if(i < 0){
      countnegative++;
    }
    else{
      countzero++;
    }
  }

  print('You Entered $countpositive Positive Numbers , $countnegative Negative and  $countzero Zero');
}