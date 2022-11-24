
import 'dart:io';

void main(){
  ///null Safety on
  print('Enter Array : ');
  List<int> arr1 = [];
  for(int i = 0 ; i < 10; i++){
    arr1.add(int.parse(stdin.readLineSync()!));
  }
  print('======================================');
   reverseArray(arr1);

}
void reverseArray(List<int> arr){
  print('Reverse Array : ');
  for(int i = 9; i >= 0 ; i--){
    int o = arr[i];
    stdout.write(' $o ');
  }

}