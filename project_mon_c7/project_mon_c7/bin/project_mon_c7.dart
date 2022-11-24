import 'dart:io';

class Employee{
  String name;
  Project? currentProject;
  Employee(this.name);
}
class Project{
  String? name;
}
void main(List<String> arguments) {

  Employee('Mohamed');
  // assert not null
  //int num1 = int.parse(stdin.readLineSync()!);

  //int num = int.parse(stdin.readLineSync() ?? '0');

  Employee? employee;
 //  if(employee!=null && employee.currentProject!=null)
 //  print(employee.currentProject.name);
 // String name;
 // String? name;
  Employee e1;
  Employee? e2;

  // chain
  String name = employee?.currentProject?.name ?? 'unkown';
  print('hello');
  //String? name = employee?.currentProject?.name;
  // if(employee?.currentProject?.name ==null){
  //   name = employee?.currentProject?.name;
  // }else {
  //   name = 'unknown';
  // }

}
