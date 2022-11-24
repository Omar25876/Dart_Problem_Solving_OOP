import 'dart:io';

class Shape{
  double width;
  double height;
  Shape(this.width,this.height);
  double calculateArea(){
    return 0;
  }
  void draw(){
    print('error not defined');
  }
}
class Rectangle extends Shape{

  Rectangle(double width,double height):super(width,height);

  @override
  double calculateArea() {
    return width*height;
  }
  @override
  void draw() {
    for(int i=0;i<height;i++){
      for(int j=0;j<width;j++){
        stdout.write(' * ');
      }
      print('');
    }
  }
}
class Triangle extends Shape{
  Triangle(double width,double height):super(width,height);

  @override
  double calculateArea() {
    return .5*width*height;
  }
  @override
  void draw() {
    for(int i=0;i<height;i++){
      for(int j=0;j<=i;j++){
        stdout.write(' * ');
      }
      print('');
    }
  }
}

void main(){
  Rectangle rectangle = Rectangle(10, 20);
  Triangle triangle = Triangle(20, 30);

  rectangle.draw();
  triangle.draw();
}