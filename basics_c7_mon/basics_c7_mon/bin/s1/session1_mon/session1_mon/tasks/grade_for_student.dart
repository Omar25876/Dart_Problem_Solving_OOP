import 'dart:io';

void main(){
  //null safety is on
  stdout.write('Please, Enter your grade =  ');
  String letter = stdin.readLineSync()!.toUpperCase();

  switch(letter){
    case ('A'):{
      print('Excellent');
    }
    break;
    case ('B'):{
      print('OutStanding');
    }
    break;
    case ('C'):{
      print('Good');
    }
    break;
    case ('D'):{
      print('Can Do Better');
    }
    break;
    case ('F'):{
      print('Failed');
    }
    break;
    default:{
      print('Invalid Grade');
    }
  }

}