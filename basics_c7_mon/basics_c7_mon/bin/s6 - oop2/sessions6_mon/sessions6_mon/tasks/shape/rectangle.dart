import 'shape.dart';

class Rectangle extends Shape{
  double? length;
  double? width;

  Rectangle(super.color,this.length,this.width);

  @override
  double getArea() {
    return  length! * width!;
  }

  @override
  String to_string() {
    return 'Rectangle : Color = $color \n Length = $length , Width = $width ----> Area = ${getArea()}';
  }



}