
import 'dart:io';

void main(){
  ///null Safety on
  print('Enter the number of students : ');
  int n = int.parse(stdin.readLineSync()!);
  print('Enter $n Scores : ');
  List<int> arr1 = []  ;
  for(int i = 0 ; i < n; i++){
    arr1.add(int.parse(stdin.readLineSync()!));
  }
  score(arr1);

}
void score(List<int> arr){
  int c = 1;
  int max = arr[0];
  for(int i = 0 ; i < arr.length; i++)
  {
    if(arr[i] > max)
    {
      max = arr[i];
    }
  }
  for(int i = 0 ; i < arr.length; i++)
  {
     if( max - arr[i]  >= 0 && max - arr[i]  <= 10)
    {
      int st = arr[i];
      print('Student $c Score is $st and grade is A ');
      c++;
    }
    else if(max - arr[i]  >= 11 && max - arr[i]  <= 20 )
    {
      int st = arr[i];
      print('Student $c Score is $st and grade is B ');
      c++;
    }
    else if(max - arr[i]  >= 21 && max - arr[i]  <= 30 )
    {
      int st = arr[i];
      print('Student $c Score is $st and grade is C ');
      c++;
    }
    else if(max - arr[i]  >= 31 && max - arr[i]  <= 40)
    {
      int st = arr[i];
      print('Student $c Score is $st and grade is D ');
      c++;
    }
    else if(max - arr[i]  > 40 )
    {
      int st = arr[i];
      print('Student $c Score is $st and grade is F ');
      c++;
    }
  }
}
