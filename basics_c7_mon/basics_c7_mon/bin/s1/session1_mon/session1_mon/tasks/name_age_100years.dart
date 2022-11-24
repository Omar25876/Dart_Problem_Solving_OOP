import 'dart:io';

void main(){
  //null safety is on
  stdout.write('ُWhat is your name ?  ');
  String name = stdin.readLineSync()!;
  stdout.write('ُHow old are you ? ');
  int age = int.parse(stdin.readLineSync()!);

  int agefrom100 = 100 - age ;

  print('Hi $name you have $agefrom100 years left to be 100 years old ');

}