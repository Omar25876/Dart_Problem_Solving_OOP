import 'dart:io';

void main(){
  //null safety is on
  stdout.write('ُPlease, Enter The Number =  ');
  int num = int.parse(stdin.readLineSync()!);

  if(num % 2 == 0){
    print('yes');
  }
  else if(num % 2 == 1){
    print('no');
  }
}