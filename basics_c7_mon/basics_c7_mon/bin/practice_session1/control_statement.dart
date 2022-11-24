void main(){
  int grade = 105;
  // 90-> 100 -> A+
  // 80-> 90 -> B+
  // 70 -> 80 c+
  // 50-> 70 D
  // grade<50 -> F
  // if(condition -> T/F){
  //    body
  // }

  if(grade>=90&&grade<=100) {
    print('A+');
  } else if(grade>=80 && grade<90){
    print('B+');
  }else if(grade>=70 && grade<80){
    print('C+');
  }else if(grade>=50 && grade<70){
    print('D');
  }else if(grade<50){
    print('F');
  }else {
    print('invalid input');
  }

}