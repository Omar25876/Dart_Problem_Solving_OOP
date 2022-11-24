class Employee{
  String name;
  Project currentProject;
  Employee(this.name);
}
class Project{
  String name;
}
void main(List<String> arguments) {
  Employee employee;
  // if(employee!=null && employee.currentProject!=null)
  // print(employee.currentProject.name);
  // String name;
//  String? name;
  Employee e1;
  Employee e2;

  String name = employee.currentProject.name;

  //String? name = employee?.currentProject?.name;

  // if(employee?.currentProject?.name ==null){
  //   name = employee?.currentProject?.name;
  // }else {
  //   name = 'unknown';
  // }
      ;

}
