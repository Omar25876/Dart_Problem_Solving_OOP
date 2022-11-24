import 'rectangle.dart';
import 'shape.dart';
import 'triangle.dart';

void main(){
  Shape shape1 = Rectangle('Red',5,10);
  print(shape1.to_string());
  print('=============================');
  Shape shape2 = Triangle('Green',2,4);
  print(shape2.to_string());
}