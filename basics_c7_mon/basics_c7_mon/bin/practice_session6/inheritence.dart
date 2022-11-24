// is a ?
// someKind of ?

// generalization
//accountant is an employee ? yes
// developer is an employee ? yes
// abstract
abstract class Employee{// parent - base - super
  int id;
  String name;
  double salary;
  Employee(this.id,this.name,this.salary);
  void viewDetails() {
    print('id $id');
    print('name $name');
    print('salary $salary');
  }
  double calculateSalary();
}

// concrete
class Accountant extends Employee{// child - derived -sub
  bool certifiedExcel;
  Accountant(int id,String name,double salary,this.certifiedExcel)
      :super(id,name,salary);

  @override
  void viewDetails(){// function override
    // this points to current object
    // super points to the parent attributes and functions
    super.viewDetails();// call super function
    print('certified excel $certifiedExcel');
  }
  @override
  double calculateSalary() {
    return certifiedExcel? salary +(.10*salary) : salary;
  }
}

class Developer extends Employee{
  String frameWork;
  Developer(int id,String name,double salary,this.frameWork)
      :super(id,name,salary){
    // .fajsfnalskdf
    // a;ksmf;adsf
  }

  @override
  void viewDetails() {
    print('id $id');
    print('name $name');
    print('salary $salary');
    print('frameWork $frameWork');
  }
  @override
  double calculateSalary(){
    return salary +(.25 * salary);
  }
}

void printPayRoll(List<Developer>allDevs,List<Accountant>allAccs){
//  print each empl name and salary
  for(int i=0;i<allDevs.length;i++){
    print(' ${allDevs[i].name}  -> ${allDevs[i].calculateSalary()}');
  }
  for(int i=0;i<allAccs.length;i++){
    print(' ${allAccs[i].name}  -> ${allAccs[i].calculateSalary()}');
  }

}

void printPayRollV2(List<Employee> allEmps){
  for(int i=0;i<allEmps.length;i++){
    print('${allEmps[i].name} -> ${allEmps[i].calculateSalary()}');
  }
}
void main(){
  print('sdfsdfgdsfg');
  print(12);
  print(15.5);

  // polymorphism
  Employee e1 = Developer(10, 'Mohamed', 7000, 'C++');
  Employee e2 = Accountant(10, 'Mohamed', 7000, false);

  List<Developer> allDevs = [
    Developer(10, 'dev1', 7000, 'C++'),
    Developer(11, 'dev2', 10000, 'Android'),
    Developer(12, 'dev3', 20000, 'Flutter'),
    Developer(13, 'dev4', 30000, 'IOS'),
  ];
  List<Accountant> allAccs = [
    Accountant(10, 'acc1', 7000, false),
    Accountant(10, 'acc2', 5000, true),
    Accountant(10, 'acc3', 3000, true),
    Accountant(10, 'acc4', 4000, false)
  ];

  List<Employee> allEmps = [
    Developer(10, 'dev1', 7000, 'C++'),
    Developer(11, 'dev2', 10000, 'Android'),
    Developer(12, 'dev3', 20000, 'Flutter'),
    Developer(13, 'dev4', 30000, 'IOS'),
    Accountant(10, 'acc1', 7000, false),
    Accountant(10, 'acc2', 5000, true),
    Accountant(10, 'acc3', 3000, true),
    Accountant(10, 'acc4', 4000, false)
  ];
  printPayRoll(allDevs, allAccs);
  print('-----------------');
  printPayRollV2(allEmps);


  print('------------------');

 // Employee e = Employee(10, 'Empl', 4000);
 // e.viewDetails();
 // print(e.calculateSalary());

  print('------------');
  Accountant a = Accountant(10,'mazen',6000,false);
  a.viewDetails();
  print(a.calculateSalary());
  print('------------');

  Developer d = Developer(1, 'Mohamed', 20000, 'Flutter');
  d.viewDetails();
  print(d.calculateSalary());
}

// Accountants
//   id
//   name
//   salary
//   certifiedExcel
//   calculateSalary (certified + 10%)
// Developers
//   id
//   name
//   salary
//   FrameWork
//   calculate salary + 25%
//
// Sales
//   id
//   name
//   salary
//   Target
// calculateSalary based Target
