import 'person.dart';

class Teacher extends Person{
  int? numCourses ;
  List<String>? courses;

  Teacher({this.numCourses=0,this.courses,super.name,super.address});

  @override
  String to_string() {
    return 'Teacher : \n Name: $name \n Address: $address \n';
  }

  bool addCourse(String course){
    for(int i = 0;i <courses!.length;i++){
      if(courses![i] != course){
        courses!.add(course);
        return true;
      }
    }
    return false;
  }
  bool removeCourse(String course){
    for(int i = 0;i <courses!.length;i++){
      if(courses![i] == course){
        courses!.remove(course);
        return true;
      }
    }
    return false;
  }




}