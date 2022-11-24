import 'dart:io';

void main(){
  //null safety is on
  stdout.write('ُEnter The First Number = ');
  double n1 = double.parse(stdin.readLineSync()!);
  stdout.write('ُEnter The Second Number = ');
  double n2 = double.parse(stdin.readLineSync()!);
  stdout.write('ُEnter The Third Number = ');
  double n3 = double.parse(stdin.readLineSync()!);

  if(n1>n2 && n1>n3){
    if(n2>n3){
      print('$n3 , $n2 , $n1');
    }
    else if(n3>n2){
      print('$n2 , $n3 , $n1');
    }
  }
  else if(n2>n1 && n2>n3){
    if(n1>n3){
      print('$n3 , $n1 , $n2');
    }
    else if(n3>n1){
      print('$n1 , $n3 , $n2');
    }
  }
  else if(n3>n1 && n3>n1){
    if(n1>n2){
      print('$n2 , $n1 , $n3');
    }
    else if(n2>n1){
      print('$n1 , $n2 , $n3');
    }
  }

}