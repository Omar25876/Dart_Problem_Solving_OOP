abstract class GeometricObject{
  String? color;
  bool? fillcolor;
  GeometricObject({this.color='white',this.fillcolor=false});

  String to_string();
}
