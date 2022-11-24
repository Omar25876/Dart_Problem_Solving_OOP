import 'shape.dart';
class Triangle extends Shape{
  double? base;
  double? height;
  Triangle(super.color,this.height,this.base);

  @override
  double getArea() {
    return 0.5 * base! * height!;
  }

  @override
  String to_string() {
    return 'Triangle :  Color = $color \n Base = $base , Height = $height ----> Area = ${getArea()}';
  }

}