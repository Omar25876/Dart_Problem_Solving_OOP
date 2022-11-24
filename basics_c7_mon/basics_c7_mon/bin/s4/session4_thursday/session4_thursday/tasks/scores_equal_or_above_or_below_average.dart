import 'dart:io';
void main(){
  ///null Safety on
  print('Enter Array : ');
  List<int> arr1 = [];
  bool stopread = true;
  for(int i = 0 ; i < 100; i++){
    int n = int.parse(stdin.readLineSync()!);
    if(n > 100){
      stopread = false;
      print('invalid Number ');
      break;
    }
    else if(n < 0 ){
      stopread = true;
      break;
    }
    else{
      arr1.add(n);
    }
  }
  if(stopread == true){
    averageScores(arr1);
  }
}
void averageScores(List<int> arr){
  int sum= 0;
  int c =0;
  int cs = 0;
  int countabove = 0;
  int countequal = 0;
  int countbelow = 0;
  for(int i = 0 ; i < arr.length - 1; i++){
    sum  += arr[i];
    c++;
  }
  double average = sum / c;
  for(int i = 0 ; i < arr.length; i++)
  {
    if(arr[i] > average )
    {
      cs++;
      int st = arr[i];
      print('Student $cs Score is $st =  Above average( $average ) ');
      countabove++;
    }
    else if(arr[i] < average )
    {
      cs++;
      int st = arr[i];
      print('Student $cs Score is $st =  Below average( $average ) ');
      countbelow++;
    }
    else if(arr[i] == average )
    {
      cs++;
      int st = arr[i];
      print('Student $cs Score is $st =  Equal to average( $average ) ');
      countequal++;
    }
  }
  print('===========================================================');
  print('\n\nThe Number of students scores Above average  =  $countabove');
  print('\nThe Number of students scores below average    =  $countbelow');
  print('\nThe Number of students scores Equal to average =  $countequal');
}