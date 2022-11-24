import 'dart:io';

void main(){

 // double n = double.parse(stdin.readLineSync());
//  String line = stdin.readLineSync()
  //int n = int.parse(stdin.readLineSync());

  print('please enter num of seconds');
  int secs = int.parse(stdin.readLineSync());

  int hrs = secs ~/ 3600;// num of hrs 1
  secs = secs % 3600;// 66
  int mins = secs ~/ 60 ; // 66
  secs = secs % 60; // update secs 6

  print('hrs $hrs mins $mins secs $secs');
}