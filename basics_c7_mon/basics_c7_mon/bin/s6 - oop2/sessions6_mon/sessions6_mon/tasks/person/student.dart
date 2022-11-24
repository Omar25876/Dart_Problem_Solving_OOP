import 'person.dart';

class Student extends Person{
  List<int>? grades;
  int? numCourses ;
  List<String>? courses;

  Student({this.numCourses=0,this.courses,this.grades,super.name,super.address});

  @override
  String to_string() {
    return 'Student : \n Name: $name \n Address: $address \n'
    'Grades Average = ${getAverage()}';
  }

  void addCourseGrade( List<int>  grade){
    for(int i =0 ;i<grade.length;i++){
      grades!.add(grade[i]);
    }
  }

  void PrintGrades(){
    for(int i =0; i<grades!.length;i++){
      print('Subject ${i+1} : ${grades![i]}');
    }
  }

  double getAverage(){
    int sum =0;
    for(int i =0; i<grades!.length;i++){
      sum = sum + grades![i];
    }
    return sum/grades!.length;
  }


}