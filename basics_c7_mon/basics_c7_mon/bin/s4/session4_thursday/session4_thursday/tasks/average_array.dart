
import 'dart:io';

void main(){
  ///null Safety on
  List<int> arr1 = [];
  print('Enter Array : ');
  for(int i = 0;i<5;i++){
    int n = int.parse(stdin.readLineSync()!);
    arr1.add(n);
  }
  double x = calculateEven(arr1);
  print('Average  = $x');
}
double calculateEven(List<int> arr){
  int sum= 0;
  int c = 0;
  for(int i = 0 ; i < arr.length - 1; i++){
      sum  += arr[i];
      c++;
  }
  double average = sum / c;
  return average;
}