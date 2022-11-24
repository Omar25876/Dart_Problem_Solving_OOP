import 'dart:io';

void main(){
  ///null Safety on
  int n = int.parse(stdin.readLineSync()!);
  int sum = 0;
  print('The First $n Natural Number is : ');
  for(int i = 1; i<= n ; i++)
  {
    stdout.write(' $i ');
    sum += i;
  }
  print('');
  print('The Sum Of Natural Number Up To Terms : $sum');
}