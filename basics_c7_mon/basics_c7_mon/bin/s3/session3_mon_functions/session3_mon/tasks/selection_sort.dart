
import 'dart:io';

void main(){
  ///null Safety on
  List<int> arr1 = [7,6,2,1,8,5,3,4];
  Selectionsort(arr1);
}
void Selectionsort(List<int> arr){
                                     ///n
  for (int i = 0; i < arr.length - 1; i++)
  {
    int min = i;                                  ///Time Complexity
                                       ///n
    for (int j = i + 1; j < arr.length; j++){       ///Big o(n^2)
      if (arr[j] < arr[min]){
        min = j;
      }
    }
    int temp = arr[min];
    arr[min] = arr[i];
    arr[i] = temp;
}
  print('Selection Sort Array : ');
  for(int i = 0; i < arr.length ; i++){
    int o = arr[i];
    stdout.write(' $o ');
  }

}