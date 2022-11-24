import 'dart:io';
void main(){
  ///null Safety on
  print('Enter Ten Numbers : ');
  List<int> arr1 = [];
  int x = int.parse(stdin.readLineSync()!);
  arr1.add(x);
  for(int i = 0 ; i < 10; i++){
    bool f = true;
    int n = int.parse(stdin.readLineSync()!);
    for(int j = 0; j < arr1.length ; j++) {
      if (arr1[j] == n) {
        f = false;
       break;
      }
    }
  if(f)
  {
  arr1.add(n);
  }
  }
  int count = arr1.length+1;
  print('The Number of distinct numbers is $count');

    distinctNumbers(arr1);
}
void distinctNumbers(List<int> arr){
  stdout.write('The distinct numbers are :');
  for(int i = 0 ; i < arr.length ; i++){
    int o = arr[i];
    stdout.write(' $o ');
  }
}