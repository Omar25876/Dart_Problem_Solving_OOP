import 'geometric.dart';

class Rectangle extends GeometricObject{
  double? width ;
  double? height  ;

  Rectangle({this.width= 1.0,this.height = 1.0}):super(color: 'red',fillcolor: true);

  double  getArea(){

    return height!*width!;
  }

  double getPerimeter(){

    return (height!+width!)*2;
  }
  @override
  String to_string(){
    return 'Rectangle : \n Width =  $width \n Height =  $height \n Color = $color \n Fill Color = $fillcolor '
        '\n Area = ${getArea()} \n Perimeter = ${getPerimeter()}';

  }

}