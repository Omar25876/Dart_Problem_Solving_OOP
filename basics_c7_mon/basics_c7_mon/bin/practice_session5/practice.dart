class Employee{
  String name;
  String nationalId;
  String gender;
  int availableVacations;
  int availablePermissionHours;
  double actualSalary;

  static double salary =1500;
  static double deductionPerDay=85.5;
  static double deductionPerHour = 15.5;

  Employee(this.name,this.nationalId,this.gender){
    availablePermissionHours=20;
    availableVacations=15;
    actualSalary = salary;
  }
  Employee.init():this('','','');
  // Employee.test():this.init();
  // {
  //   name = '';
  //   nationalId='';
  //   gender = '';
  //   availablePermissionHours=20;
  //   availableVacations=15;
  //   actualSalary = salary;
  // }
  void view(){
    print('name $name');
    print('national Id $nationalId');
    print('actual salary $actualSalary');
  }
  void viewDetailed(){
    view();
    print('available vacations  $availableVacations');
//    this // pointer to the object
  }
  void takeVacation(int numOfDays){
    availableVacations -=numOfDays;
    if(availableVacations<0){
      calculateActualSalary();
    }
  }
  void takePermissionHours(int numOfHours){
    availablePermissionHours -= numOfHours;
    if(availablePermissionHours<0){
      calculateActualSalary();
    }
  }
  double calculateActualSalary(){
    actualSalary = salary;
    if(availableVacations<0){
      // -1  * 85.5  = - 85.5
      double deductions = availableVacations * deductionPerDay;
      actualSalary += deductions;
    }
    if(availablePermissionHours<0){
      double deductions = availablePermissionHours*deductionPerHour;
      actualSalary+=deductions;
    }
    return actualSalary;
  }
}
void main(){
  Employee employee;
  employee.view();
  employee.viewDetailed();
  employee.takeVacation(16);
  employee.viewDetailed();
}