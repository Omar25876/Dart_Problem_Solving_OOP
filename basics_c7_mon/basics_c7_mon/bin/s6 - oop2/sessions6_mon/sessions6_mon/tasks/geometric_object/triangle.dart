import 'geometric.dart';

class Triangle extends GeometricObject{
  double? side1;
  double? side2;
  double? side3;

  Triangle({this.side1= 1.0,this.side2= 1.0,this.side3= 1.0}):super(color: 'red',fillcolor: true);

  double  getArea(){

    return 1/2 * side1! * side2!;
  }

  double getPerimeter(){

    return side1!+side2!+side3!;
  }
  @override
  String to_string(){

    return 'Triangle : \n side1 =  $side1 \n side2 =  $side2 \n side3 = $side3 \n Color = $color \n Fill Color = $fillcolor '
    '\n Area = ${getArea()} \n Perimeter = ${getPerimeter()}';

  }


}