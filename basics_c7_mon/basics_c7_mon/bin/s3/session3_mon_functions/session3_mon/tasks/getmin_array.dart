import 'dart:io';

void main(){
  ///null Safety on
  print('Enter the elements of array :  ');
  List<int> arr1 = []  ;
  for(int i = 0 ; i < 5; i++){
    int n = int.parse(stdin.readLineSync()!);
    arr1.add(n);
  }
  int x = getmin(arr1);
  print('Min = $x');
}
int getmin(List<int> arr){
  int min = arr[0] ;
  for(int i = 0 ; i < arr.length - 1; i++){
    if(arr[i] < min ){
      min = arr[i];
    }
  }
  return min;
}