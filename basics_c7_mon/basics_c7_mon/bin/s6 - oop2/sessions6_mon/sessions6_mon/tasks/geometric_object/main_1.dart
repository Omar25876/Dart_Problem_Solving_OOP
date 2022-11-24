import 'rectangle.dart';
import 'triangle.dart';

void main(){
  Triangle t1 = Triangle(side1: 5,side2: 6,side3: 7,);
  t1.color='red';
  t1.fillcolor=true;
  print(t1.to_string());
  print('--------------------------------');
  Rectangle r1 = Rectangle(width: 10,height: 5);
  r1.color='green';
  r1.fillcolor=true;
 print(r1.to_string());



}