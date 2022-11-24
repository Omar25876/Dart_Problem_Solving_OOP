import 'dart:io';
import 'dart:math';

void main(){
  //null safety is on
  stdout.write('ُEnter the radius = ');
  double radius = double.parse(stdin.readLineSync()!);
  stdout.write('ُEnter the length = ');
  double length = double.parse(stdin.readLineSync()!);

  double area = radius * radius * pi;
  double volume = area * length;

  print('The area is = $area ');
  print('The volume is = $volume ');

}