import 'dart:io';

void main(){
  //null safety is on
  stdout.write('ُEnter The First Number = ');
  int n1 = int.parse(stdin.readLineSync()!);
  stdout.write('ُEnter The Second Number = ');
  int n2 = int.parse(stdin.readLineSync()!);
  stdout.write('ُEnter The Third Number = ');
  int n3 = int.parse(stdin.readLineSync()!);

  int max = n1 > n2 && n1 > n3 ? n1: n2 > n1 && n2 > n3? n2 : n3  ;
  int min = n1 < n2 && n1 < n3 ? n1: n2 < n1 && n2 < n3? n2 : n3  ;

  print('Max = $max');
  print('Min = $min');

}