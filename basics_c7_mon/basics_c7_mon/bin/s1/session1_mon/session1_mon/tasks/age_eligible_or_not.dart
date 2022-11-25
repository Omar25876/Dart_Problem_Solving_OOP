import 'dart:io';

void main(){
  //null safety is on
  stdout.write('ُPlease, Enter Your Age = ');
  int age = int.parse(stdin.readLineSync()!);

  if(age >=21){
    print('Congratulation!!! You are eligible for casting your vote.');
  }
  else{
    print("Sorry! You are ineligible for casting your vote.");
  }
}