import 'dart:io';

void main(){
  ///null Safety on
  int n = int.parse(stdin.readLineSync()!);
  int sum = 0;
  stdout.write('The Odd Numbers are : ');


  for (int i = 1; i <= n; i++)
  {
    int res = 2 * i - 1;
    stdout.write(' $res ');
    sum += res;
  }

  print('');
  print('The Sum Of Odd Natural Number Up To $n Terms : $sum');
}