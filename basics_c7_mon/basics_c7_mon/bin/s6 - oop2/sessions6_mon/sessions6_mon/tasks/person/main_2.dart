import 'student.dart';
import 'teacher.dart';

void main(){
  Student s1 = Student(name: 'omar'
    ,address: 'cairo'
    , numCourses: 3
    ,courses: ['E','Math','Science']
    ,grades: [15,20,10]
  );
  s1.PrintGrades();
 print(s1.to_string());

 print('===============================');

  Teacher t1 = Teacher(name: 'ali'
      ,address: 'alex'
      , numCourses: 2
      ,courses: ['E','Math']
  );
  print(t1.to_string());
  print('Add Course? ${t1.addCourse('Dart')}');
  print('Remove Course? ${t1.removeCourse('Dart')}');


}