import 'dart:io';

void main(){
  //null safety is on
  stdout.write('ُPlease, Enter The Number =  ');
  int num = int.parse(stdin.readLineSync()!);

  if(num > 0){
    print('Positive');
  }
  else if(num < 0){
    print('Negative');
  }
  else{
    print('Zero');
  }
}