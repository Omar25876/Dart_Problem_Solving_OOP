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
    else if(n == 0 ){
      stopread = true;
      break;
    }
    else{
      arr1.add(n);
    }
  }
  if(stopread == true){
    occurencesArray(arr1);
  }
}
void occurencesArray(List<int> arr){
  for(int i = 0 ; i < arr.length ; i++){
    int counter = 0;
    int o = arr[i];
    for(int j = 0 ; j < arr.length ; j++)
    {
      if(arr[i] == arr[j])
      {
        counter ++;
      }
    }
     for(int j = 0 ; j < arr.length -1 ; j++)
    {
      if(arr[j] == arr[j+1] ) arr.removeAt(i);
     }

     if(counter != 1)
     {
       print(' $o  Occurs  $counter  times');
     }
     else{
       print(' $o  Occurs  $counter  time');
     }
  }
}